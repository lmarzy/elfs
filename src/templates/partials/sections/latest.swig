<section class="latest">
	
	<h1 class="h-section-sub">Latest Products</h1>

	<ul class="latest__list">

		{% for products in latestProducts %}

			<li class="list-unstyled">
	
			<a href="{{ products.url }}" title="{{ products.title }}" class="product">

				<article>
						
						<img class="full-width" alt="{{ products.productAlt }}" src="{{ products.productImg }}">

						<header>
							
							<h1 class="h-product">{{ products.productTitle }}</h1>

							<p class="product--price">&pound;{{ products.productPrice }}</p>

						</header>

				</article>

			</a>

		</li>			

		{% endfor %}

	</ul>

</section>

<!-- 
{ "url": "/", "title": "product title", "productAlt": "alt", "productImg": "http://placehold.it/270x180", "productTitle": "Product Title", "productPrice": "2.99" } -->