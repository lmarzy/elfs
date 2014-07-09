<article>

	<div class="section section--highlight" itemscope itemtype="http://schema.org/Product">

		<ul class="breadcrumbs list-unstyled l-wrap">
			<li><a href="/">Home</a></li>
			<li><a href="/products.html">Products</a></li>
			<li>{{ breadcrumb }}</li>
		</ul>
		
		<div class="l-wrap">

			<div class="g-wrap">

				<div class="l-product-img">

					<figure class="product__img">
	
						<img class="full-width" alt="{{ product.alt }}" src="{{ product.img }}" itemprop="image">	

						<figcaption>{{ product.caption }}</figcaption>

					</figure>

					</div> <!-- !END div.l-product-img -->

					<div class="l-product-details">

					<div class="product__details">

						<header class="product--overview">
							
							<h1 class="h-product" itemprop="name">{{ product.title }}</h1>
							
							<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">
								
								<p><span class="product--price" itemprop="price">&pound;{{ product.price }}</span> <span class="smallprint">inc uk postage</span></p>
								
								{% if inStock %}
									<p class="smallprint" itemprop="availability" href="http://schema.org/InStock">In Stock</p>
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

						<div class="product__buy">
							
							{% if inStock %}

								<!-- Elf Sets -->
								{% if buyElfSet %}
									{% include "buy-buttons/elf-set.swig" %}
								{% endif %}

								<!-- Nice Certificate -->
								{% if buyNiceCert %}
									{% include "buy-buttons/nice-cert.swig" %}
								{% endif %}

								<!-- Finger Puppets -->
								{% if buyFingerPuppets %}
									{% include "buy-buttons/finger-puppets.swig" %}
								{% endif %}

								<!-- Special Key -->
								{% if buyKey %}
									{% include "buy-buttons/key.swig" %}
								{% endif %}

								<!-- Bendy Elf -->
								{% if buyBendyElf %}
									{% include "buy-buttons/bendy-elfs.swig" %}
								{% endif %}

								<!-- Elf Mug -->
								{% if buyMug %}
									{% include "buy-buttons/mug.swig" %}
								{% endif %}
		
							{% else %}

								<p>We are currently awaiting product stock, please check back soon</p>

							{% endif %}


						</div>

					</div>


				</div> <!-- !END div.l-product-details -->

			</div>

		</div> <!-- !END div.l-wrap -->

	</div> <!-- !END div.section.section highlight -->
		
		{% if productMoreImages %}

		<aside class="section product__moreimg">

			<div class="l-wrap">
			
			<h1 class="h-section">More product images</h1>

				<ul class="list-unstyled g-wrap l-more-images">
					
					{% for moreImages in product.moreImages %}

					<li>

						<figure class="product__img">
							
							<img class="full-width" alt="{{ moreImages.alt }}" src="{{ moreImages.img }}">

							<figcaption>{{ moreImages.caption }}</figcaption>

						</figure>

					</li>

					{% endfor %}

				</ul>

			</div>

		</aside>

		{% endif %}

</article>