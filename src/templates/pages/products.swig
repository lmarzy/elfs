{% extends '../layout/layout.swig' %}

{% block content %}

<section class="section--highlight">
		
	<div class="l-wrap">
		
		<h1 class="h-page">Products</h1>
		
		<ul class="g-wrap l-productsmain list-unstyled">
			
			{% for products in productsMain %}

				<li class="list-unstyled">
		
					<a href="{{ products.url }}" title="{{ products.title }}" class="product">

						<article>
								
								<img class="full-width" alt="{{ products.imgAlt }}" src="{{ products.img }}">

								<header>
									
									<h1 class="h-product">{{ products.title }}</h1>

									<p class="product--price">&pound;{{ products.price }}</p>

								</header>

								<p>{{ products.overview }}</p>

						</article>

					</a>

				</li>			

			{% endfor %}

		</ul>
		
	</div> <!-- !END products main -->

	<div class="section--extras">

		<div class="l-wrap">

			<h2 class="h-page--sub">Product Extras</h2>

				<ul class="g-wrap l-productsextra list-unstyled">

					{% for products in productsExtra %}

						<li class="list-unstyled">
				
							<a href="{{ products.url }}" title="{{ products.title }}" class="product">

								<article>
										
										<img class="full-width" alt="{{ products.imgAlt }}" src="{{ products.img }}">

										<header>
											
											<h1 class="h-product">{{ products.title }}</h1>

											<p class="product--price">&pound;{{ products.price }}</p>

										</header>

										<p>{{ products.overview }}</p>

								</article>

							</a>

						</li>			

					{% endfor %}

			</ul>

		</div>

	</div><!-- !END products extra -->

</section>	

{% endblock %}


<!-- {% include "../partials/products/elf-sets.swig" %} -->