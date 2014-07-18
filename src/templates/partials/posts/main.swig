	<article class="section section--highlight">

		<ul class="breadcrumbs list-unstyled l-wrap">
			<li><a href="/">Home</a></li>
			<li>{{ breadcrumb }}</li>
		</ul>

		<div class="l-wrap">
		
			<h1 class="h-page">{{ title }}</h1>
			<time datetime="{{ dateMachine }}" class="date">{{ dateHuman }}</time>

			{% for details in details %}
			
				<p>{{ details }}</p>

			{% endfor %}

		</div>

	</article>