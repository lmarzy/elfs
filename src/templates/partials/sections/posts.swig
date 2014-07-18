<section class="section section--blogs">
	
	<div class="l-wrap">

		<h1 class="h-section">Latest News</h1>

		<ul class="list-unstyled posts">
		
			{% for post in posts %}			
	
			<li>
				<article>
					
					<a href="{{ post.url }}">
						
						<h1>{{ post.title }}</h1>

						<p>{{ post.desc }}</p>

						<time datetime="{{ post.dateMachine }}">{{ post.dateHuman }}</time>

					</a>

				</article>
			</li>

			{% endfor %}

		</ul>
	
	</div>

</section>