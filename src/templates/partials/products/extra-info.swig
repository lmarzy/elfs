<div class="product__set">

	<p>The set includes:</p>

	<ul>

		{% for list in product.productInfo %}

			<li>{{ list }}</li>

		{% endfor %}

	</ul>
	
	{% if product.smallPrint %}
		<p class="smallprint">{{ product.smallPrint }}</p>
	{% endif %}

</div>
