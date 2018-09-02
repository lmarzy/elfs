{% extends '../layout/layout.swig' %}

{% block content %}

<section class="section section--highlight" itemscope itemtype="http://schema.org/Product">

	<ul class="breadcrumbs list-unstyled l-wrap">
		<li><a href="/">Home</a></li>
		<li>Products</li>
	</ul>
		
	<div class="l-wrap">

		<h2 class="h-page">More Than A Christmas Elf Toy</h2>
		
		<p>Here at The Christmas Elf, we offer much more than your standard <em>elf on the shelf</em>. Our product range covers everything you and your little ones need to make the holiday season special. Not sure how to keep your child occupied on the big night? Then why don’t you look at our Christmas Eve Bags – perfect to fill with Christmas Pyjamas, DVD's and treats whilst getting them into the Christmas spirit.  Our Christmas Elf Sets enable you to choose from a wide range of <em>Christmas elves</em>, both boys and girls, and they come in a range of different and stylish outfits.</p>

		<ul class="g-wrap l-products list-unstyled">
			
			{% for products in products %}

				<li class="list-unstyled">
		
					<a href="{{ products.url }}" title="{{ products.title }}" class="product">

						<article>
								
								<img class="full-width" alt="{{ products.imgAlt }}" src="/images/products/{{ products.img }}" itemprop="image">

								<header class="product--overview">
									
									<h1 class="h-product" itemprop="name">{{ products.title }}</h1>

									<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">

										<p><span class="product--price" itemprop="price">&pound;{{ products.price }}</span> <span class="smallprint">inc uk postage</span></p>

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

</section>	

{% endblock %}


<!-- {% include "../partials/products/elf-sets.swig" %} -->