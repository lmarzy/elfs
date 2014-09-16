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
			
			{% if hasLinks %}
			<ul class="list-unstyled">
				
				<li><a href="http://www.iheartnaptime.net/elf-shelf-ideas/">Elf-Shelf ideas</a></li>
				<li><a href="http://www.buzzfeed.com/mikespohr/33-genius-elf-on-the-shelf-ideas">33 Genius Elf on the shelf ideas</a></li>
				<li><a href="http://www.pinterest.com/mudpiestudio/elf-on-the-shelf-ideas/">Elf on the shelf ideas</a></li>

			</ul>
			{% endif %}

			{% if hasSocialMediaLinks %}
			<ul class="list-unstyled">
				
				<li><a href="http://instagram.com/elfantics">Instagram</a></li>
				<li><a href="https://www.facebook.com/Christmaself01">Facebook</a></li>

			</ul>
			{% endif %}
		
			{% if hasExtraInfo %}

				<h2>{{ extraInfoTitle }}</h2>
				
				{% for details in extraInfoDetails %}
				
					<p>{{ details }}</p>

				{% endfor %}

			{% endif %}


		</div>

	</article>