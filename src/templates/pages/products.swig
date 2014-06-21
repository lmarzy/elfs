{% extends '../layout/layout.swig' %}

{% block content %}

<section class="section--highlight">
		
	<div class="l-wrap">
		
		<h1 class="h-page">Products</h1>
		
		{% include "../partials/products/elf-sets.swig" %}

	</div>

		<div class="section--extras">

			<div class="l-wrap">

				<h2 class="h-page--sub">Product Extras</h2>

				<ul class="g-wrap l-productextras list-unstyled">

					<li>
						{% include "../partials/products/nice-cert.swig" %}						
					</li>
					<li>
						{% include "../partials/products/elf-puppets.swig" %}						
					</li>
					<li>
						{% include "../partials/products/special-key.swig" %}		
					</li>

			</ul>

		</div>

	</div>

</section>	

{% endblock %}
