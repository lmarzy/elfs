<section class="latest">
	
	<h1 class="h-section-sub">Latest Products</h1>

	<ul class="latest__list">

		{% for products in latestProducts %}

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

	<a href="/products.html" class="btn btn--b full-width">View All Products</a>

</section>

<!-- 
{ "url": "/", "title": "product title", "productAlt": "alt", "productImg": "http://placehold.it/270x180", "productTitle": "Product Title", "productPrice": "2.99" } -->