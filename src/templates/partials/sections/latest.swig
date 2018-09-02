<section class="latest">
	
	<h1 class="h-section-sub">Latest Products</h1>

	<ul class="latest__list">

		{% for product in products %}

			{% if product.latest %}

				<li class="list-unstyled">
		
					<a href="{{ product.url }}" title="{{ product.title }}" class="product">

						<article itemscope itemtype="http://schema.org/Product">
								
								<img class="full-width" alt="{{ product.imgAlt }}" src="/images/products/{{ product.img }}" itemprop="image">

								<header>
									
									<h1 class="h-product" itemprop="name">{{ product.title }}</h1>

									<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">

										<p class="product--price" itemprop="price">&pound;{{ product.price }}</p>

									</div>

								</header>

						</article>

					</a>

				</li>

			{% endif %}

		{% endfor %}

	</ul>

</section>