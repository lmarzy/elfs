<nav role="navigation">
	<h1 class="visuallyhidden">Main site navigation</h1>
	
	<ul class="list-unstyled list-inline nav-main">

		{% for links in siteNav %}

			<li><a href="{{ links.linkUrl }}">{{ links.linkName }}</a></li>

		{% endfor %}
		
	</ul>

</nav>