{% extends '../layout/layout.swig' %}

{% block content %}

<section class="section--highlight">
		
	<div class="l-wrap">
		
		<h1 class="h-page">Products</h1>

		<article class="product product--main">
					
					<img class="full-width" alt="{{ mainProduct.productAlt }}" src="{{ mainProduct.productImg }}">

					<header>
						
						<h1>{{ mainProduct.productTitle }}</h1>

						<p>&pound;{{ mainProduct.productPrice }}</p>

					</header>

			</article>

			<h2 class="h-page--sub">Product Extras</h2>

			<ul class="g-wrap l-productextras">

				{% for products in productExtras %}

				<li class="list-unstyled">

				<article class="product">
						
						<img class="full-width" alt="{{ products.productAlt }}" src="{{ products.productImg }}">

						<header>
							
							<h1>{{ products.productTitle }}</h1>

							<p>&pound;{{ products.productPrice }}</p>

						</header>

				</article>

			</li>			

			{% endfor %}

		</ul>

	</div>

</section>	

{% endblock %}
