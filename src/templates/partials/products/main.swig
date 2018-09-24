<article>

	<div class="section section--highlight" itemscope itemtype="http://schema.org/Product">

		<ul class="breadcrumbs list-unstyled l-wrap">
			<li><a href="/">Home</a></li>
			<li><a href="/products.html">Products</a></li>
			<li>{{ breadcrumb }}</li>
		</ul>

		<div class="l-wrap">

			{% if dispatchDays %}
				<div class="alert is-info">Current dispatch time is up to {{ dispatchDays }} working days.</div>
			{% endif %}

			<div class="g-wrap">

				<div class="l-product-img">

					<figure class="product__img">

						<img class="full-width" alt="{{ product.alt }}" src="/images/products/{{ product.img }}" itemprop="image">

						<figcaption>{{ product.caption }}</figcaption>

					</figure>

					<ul class="share-buttons">
						<li>
							Share
						</li>
						<li>
							<a href="http://www.facebook.com/sharer.php?u=http://www.christmaself.co.uk/products/{{ productUrl }}.html" target="_blank" class="share-buttons-facebook">
								<span class="visuallyhidden">Share this product on Facebook</span>
								<svg class="icon icon-facebook" viewBox="0 0 16 16"><use xlink:href="#icon-facebook"></use></svg>
							</a>
						</li>
						<li>
							<a href="http://twitter.com/share?url=http://www.christmaself.co.uk/products/{{ productUrl }}.html&text=Checkout this great product" target="_blank" class="share-buttons-twitter">
								<span class="visuallyhidden">Share this product on Twitter</span>
								<svg class="icon icon-twitter" viewBox="0 0 16 16"><use xlink:href="#icon-twitter"></use></svg>
							</a>
						</li>
					</ul>

					</div> <!-- !END div.l-product-img -->

					<div class="l-product-details">

					<div class="product__details">

						<header class="product--overview">

							<h1 class="h-product" itemprop="name">{{ product.title }}</h1>

							<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">

								<p><span class="product--price" itemprop="price">&pound;{{ product.price }}</span> <span class="smallprint">inc uk postage</span></p>

								{% if inStock %}
									<p class="smallprint" itemprop="availability" href="http://schema.org/InStock">In Stock</p>
										{% if inStockExtra %}
											<p class="product-stockextra" itemprop="availability" href="http://schema.org/InStock">{{ inStockExtra }}</p>
										{% endif %}
								{% else %}
									<p class="smallprint" itemprop="availability" href="http://schema.org/InStock">Out of Stock</p>
								{% endif %}

							</div>

						</header>

						<div itemprop="description">

							{% for info in product.info %}

								<p>{{ info }}</p>

							{% endfor %}

						</div>

						{% if productExtraInfo %}

							{% include "extra-info.swig" %}

						{% endif %}

						{% if productNotice %}

							<p class="product--notice"><strong>{{ product.productNoticeText }}</strong></p>

						{% endif %}

						<div class="product__buy">

							{% if inStock %}

								<!-- Elf Sets -->
								{% if buyElfSet %}
									{% include "buy-buttons/elf-set.swig" %}
								{% endif %}

								<!-- Santa's Lost Button -->
								{% if buySantaButton %}
									{% include "buy-buttons/santa-button.swig" %}
								{% endif %}

								<!-- Craft Pack -->
								{% if buyCraftPack %}
									{% include "buy-buttons/craft-pack.swig" %}
								{% endif %}

								<!-- Craft Pack -->
								{% if buyElfDoor %}
									{% include "buy-buttons/elf-door.swig" %}
								{% endif %}

								<!-- Craft Pack -->
								{% if buyElfSleepingBag %}
									{% include "buy-buttons/elf-sleeping-bag.swig" %}
								{% endif %}

							{% else %}

								<p>Product is now out of stock!</p>

							{% endif %}


						</div>

					</div>


				</div> <!-- !END div.l-product-details -->

			</div>

		</div> <!-- !END div.l-wrap -->

	</div> <!-- !END div.section.section highlight -->

		{% if product.moreImages %}

		<aside class="section product__moreimg">

			<div class="l-wrap">

			<h1 class="h-section">More product images</h1>

				<ul class="list-unstyled g-wrap l-more-images">

					{% for moreImages in product.moreImages %}

					<li>

						<figure class="product__img">

							<img class="full-width" alt="{{ moreImages.alt }}" src="/images/products/{{ moreImages.img }}">

							<figcaption>{{ moreImages.caption }}</figcaption>

						</figure>

					</li>

					{% endfor %}

				</ul>

			</div>

		</aside>

		{% endif %}

</article>
