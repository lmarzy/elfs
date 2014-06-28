//lodad all plugins
var gulp 					= require('gulp'),
		gutil 				= require('gulp-util'),
		clean 				= require('gulp-clean'),
		swig 					= require('gulp-swig'),
		sass 					= require('gulp-ruby-sass'),
		autoprefixer 	= require('gulp-autoprefixer'),
		minifyhtml		= require('gulp-minify-html'),
		cssmin 				= require('gulp-minify-css'),
		uglify 				= require('gulp-uglify'),
		imagemin 			= require('gulp-imagemin'),
		watch 				= require('gulp-watch'),
		connect 			= require('gulp-connect'),
		deploy 				= require("gulp-gh-pages"),
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
			files: dir.src + '/templates/pages/**/*.swig',
			watch: dir.src + '/templates/**/*.swig'
		},
		json: {
			watch: dir.src + '/templates/pages/**/*.json'
		},
		css: {
			files: dir.src + '/assets/css/styles.scss',
			images: dir.src + '/assets/css/assets/img/*.*',
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
		cssImg: dir.dest + '/assets/css/assets/img',
		js: dir.dest + '/assets/js/',
		images: dir.dest + '/assets/img/',
	},
	deploy: {
		site: dir.dest + '/**/*'
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
	.pipe(prod ? minifyhtml() : gutil.noop())
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

//image min inline task
gulp.task('imageminInline', function () {
    return gulp.src(config.src.images)
        .pipe(imagemin({
            progressive: true,
            svgoPlugins: [{removeViewBox: false}],
        }))
        .pipe(gulp.dest(config.dest.images));
});

//image min css task
gulp.task('imageminCss', function () {
    return gulp.src(config.src.css.images)
        .pipe(imagemin({
            progressive: true,
            svgoPlugins: [{removeViewBox: false}],
        }))
        .pipe(gulp.dest(config.dest.cssImg));
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

//copy CNAME task
gulp.task('copyCNAME', function() {

	gulp.src(dir.src + '/CNAME')
	.pipe(gulp.dest(dir.dest));

});

//connect task
gulp.task('connect', function() {
  connect.server({
    root: [dir.dest],
    port: 8000,
    livereload: true
  });
});

// deploy gh-pages
gulp.task('deploy', function () {
    gulp.src(config.deploy.site)
        .pipe(deploy());
});

//build tasks

gulp.task('default', [ 'swig', 'sass', 'js', 'imageminInline', 'imageminCss', ]);

gulp.task('serve', [ 'default', 'watch', 'connect' ]);

gulp.task('deploy', [ 'default', 'copyCNAME', 'deploy' ]);
