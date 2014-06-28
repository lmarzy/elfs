<article>

	<div class="section section--highlight">
		
		<div class="l-wrap">

			<div class="g-wrap">

				<div class="l-product-img">

					<figure class="product__img">
	
						<img class="full-width" alt="{{ product.alt }}" src="{{ product.img }}">	

						<figcaption>{{ product.caption }}</figcaption>

					</figure>

					</div> <!-- !END div.l-product-img -->

					<div class="l-product-details">

					<div class="product__details">

						<header>
							
							<h1 class="h-product">{{ product.title }}</h1>

							<p><span class="product--price">&pound;{{ product.price }}</span> <span class="smallprint">inc postage</span></p>

						</header>

						<p>{{ product.info }}</p>

						{% if productExtraElf %}

							{% include "extra-info/elf-sets.swig" %}

						{% endif %}

						<div class="product__buy">
							
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