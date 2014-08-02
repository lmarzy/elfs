<section class="latest">
	
	<h1 class="h-section-sub">Latest Products</h1>

	<ul class="latest__list">

		{% for products in latestProducts %}

			<li class="list-unstyled">
	
			<a href="{{ products.url }}" title="{{ products.title }}" class="product">

				<article itemscope itemtype="http://schema.org/Product">
						
						<img class="full-width" alt="{{ products.imgAlt }}" src="{{ products.img }}" itemprop="image">

						<header>
							
							<h1 class="h-product" itemprop="name">{{ products.title }}</h1>

							<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">

								<p class="product--price" itemprop="price">&pound;{{ products.price }}</p>

							</div>

						</header>

				</article>

			</a>

		</li>			

		{% endfor %}

	</ul>

</section>