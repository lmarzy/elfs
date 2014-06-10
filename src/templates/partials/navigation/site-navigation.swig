<nav role="navigation">
	
	<ul>

		{% for links in siteNav %}

			<li><a href="{{ links.linkUrl }}">{{ links.linkName }}</a></li>

		{% endfor %}
		
	</ul>

</nav>