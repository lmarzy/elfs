{% extends '../layout/layout.swig' %}

{% block content %}

<section class="section--highlight" itemscope itemtype="http://schema.org/Product">
		
	<div class="l-wrap">
		
		<h1 class="h-page">Products</h1>
		
		<ul class="g-wrap l-productsmain list-unstyled">
			
			{% for products in productsMain %}

				<li class="list-unstyled">
		
					<a href="{{ products.url }}" title="{{ products.title }}" class="product">

						<article>
								
								<img class="full-width" alt="{{ products.imgAlt }}" src="{{ products.img }}" itemprop="image">

								<header class="product--overview">
									
									<h1 class="h-product" itemprop="name">{{ products.title }}</h1>

									<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">

										<p><span class="product--price" itemprop="price">&pound;{{ products.price }}</span> <span class="smallprint">inc postage</span></p>

										{% if products.inStock %}
											<p class="smallprint" itemprop="availability" href="http://schema.org/InStock">In Stock</p>
										{% else %}
											<p class="smallprint" itemprop="availability" href="http://schema.org/InStock">Out of Stock</p>
										{% endif %}

									</div>

								</header>

								<p class="product--description" itemprop="description">{{ products.description }}</p>

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

								<article itemscope itemtype="http://schema.org/Product">
										
										<img class="full-width" alt="{{ products.imgAlt }}" src="{{ products.img }}" itemprop="image">

										<header class="product--overview">
											
											<h1 class="h-product" itemprop="name">{{ products.title }}</h1>
										
											<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">
												<p><span class="product--price" itemprop="price">&pound;{{ products.price }}</span> <span class="smallprint">inc postage</span></p>

												{% if products.inStock %}
													<p class="smallprint" itemprop="availability" href="http://schema.org/InStock">In Stock</p>
												{% else %}
													<p class="smallprint" itemprop="availability" href="http://schema.org/InStock">Out of Stock</p>
												{% endif %}
												
											</div>

										</header>

										<p itemprop="description">{{ products.overview }}</p>

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