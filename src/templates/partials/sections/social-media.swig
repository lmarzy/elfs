<ul class="list-unstyled c-social">
	
	{% for links in socialLinks %}

		<li>
			
			<a href="{{ links.url }}" title="{{ links.name }}" class="{{ links.class }}">
				<svg class="icon {{ links.icon }}" viewBox="0 0 16 16"><use xlink:href="#{{ links.icon }}"></use></svg>
				<span class="visuallyhidden">{{ links.name }}</span>
			</a>

		</li>

	{% endfor %}

</ul>

		