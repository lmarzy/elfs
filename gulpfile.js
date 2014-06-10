//lodad all plugins
var gulp 					= require('gulp'),
		gutil 				= require('gulp-util'),
		clean 				= require('gulp-clean'),
		swig 					= require('gulp-swig'),
		sass 					= require('gulp-ruby-sass'),
		autoprefixer 	= require('gulp-autoprefixer'),
		cssmin 				= require('gulp-minify-css'),
		uglify 				= require('gulp-uglify'),
		watch 				= require('gulp-watch'),
		connect 			= require('gulp-connect'),
		dir, config;


//variables
dir = {
	src: 'src',
	dest: 'dist',
	sassCache: '.sass-cache'
};

config = {
	src: {
		html: {
			files: dir.src + '/templates/pages/*.swig',
			watch: dir.src + '/templates/**/*.swig'
		},
		json: {
			watch: dir.src + '/templates/pages/**/*.json'
		},
		css: {
			files: dir.src + '/assets/css/styles.scss',
			assets: dir.src + '/assets/css/assets/**/*.*',
			watch: dir.src + '/assets/css/**/*.scss'
		},
		js: {
			files: dir.src + '/assets/js/**/*.js'
		},
		images: dir.src + '/assets/img/**/*.*'
	},
	dest: {
		html: dir.dest,
		css: dir.dest + '/assets/css/',
		js: dir.dest + '/assets/js/',
		images: dir.dest + '/assets/img/',
	}
};

var dev = gutil.env.dev,
		prod = gutil.env.prod;

//TASKS

//clean task
gulp.task('clean', function(){

  gulp.src([dir.dest, dir.sassCache], {read:false})
  .pipe(clean());

});

//swig task
gulp.task('swig', function() {

	var opts = {
		load_json: true,
		defaults: { cache: false },
		data: require('./src/templates/pages/global')
	};

	gulp.src(config.src.html.files)
	.pipe(swig(opts))
	.pipe(gulp.dest(config.dest.html))
	.pipe(dev ? connect.reload() : gutil.noop());

});

//sass task
gulp.task('sass', function() {

	gulp.src(config.src.css.files)
	.pipe(sass({sourcemap: true}))
	.pipe(autoprefixer('last 1 version'))
	.pipe(prod ? cssmin() : gutil.noop())
	.pipe(gulp.dest(config.dest.css))
	.pipe(dev ? connect.reload() : gutil.noop());

});

//js task
gulp.task('js', function() {

	gulp.src(config.src.js.files)
	.pipe(prod ? uglify() : gutil.noop())
	.pipe(gulp.dest(config.dest.js))
	.pipe(dev ? connect.reload() : gutil.noop());

});

//image task
gulp.task('copyimg', function() {

	gulp.src(config.src.images)
	.pipe(gulp.dest(config.dest.images));

});

//css assets task
gulp.task('copyCssAssets', function() {

	gulp.src(config.src.css.assets)
	.pipe(gulp.dest(config.dest.css + '/assets/'));

});

//watch task
	gulp.task('watch', function() {

		//watch html files
		gulp.watch(config.src.html.watch, ['swig']);

		//watch json files
		gulp.watch(config.src.json.watch, ['swig']);

		//watch css files
		gulp.watch(config.src.css.watch, ['sass']);

		//watch js files
		gulp.watch(config.src.js.files, ['js']);

});

//connect task
gulp.task('connect', function() {
  connect.server({
    root: [dir.dest],
    port: 8000,
    livereload: true
  });
});

//build tasks

gulp.task('default', [ 'swig', 'sass', 'js', 'copyimg', 'copyCssAssets' ]);

gulp.task('serve', [ 'default', 'watch', 'connect' ]);
