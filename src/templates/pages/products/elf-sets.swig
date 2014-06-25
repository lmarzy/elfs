{% extends '../../layout/layout.swig' %}

{% block content %}
		
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

						<p>The elf is approx 11inches long and comply with EN71 / CE safety regulations and are suitable from the age of 3+ due to small parts. Adult supervision is required.</p>

						<p class="smallprint">Please not these elf's are intended as an occasional/decorative toy. </p>
					
						<div class="product__set">

							<p>The set includes:</p>

							<ul>

								{% for list in product.productInfo %}

									<li>{{ list }}</li>

								{% endfor %}

							</ul>

						</div>

					</div>

				</div> <!-- !END div.l-product-details -->

			</div>

		</div> <!-- !END div.l-wrap -->

	</div> <!-- !END div.section.section highlight -->

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

</article>