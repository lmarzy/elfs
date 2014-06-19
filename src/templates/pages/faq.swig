{% extends '../layout/layout.swig' %}

{% block content %}

	<section class="section--highlight">

		<div class="l-wrap">
		
		<h1 class="h-page">FAQ's</h1>

			<dl class="faq">

				<dt><a href="#">How do I purchase?</a></dt>
				<dd>Simply add your desired products to the shopping cart and click on the checkout button. This will direct you to PayPal for payment details. Please follow the on screen instructions. Our elf sets come with a personalised letter for which we require the childs/chrildrens names. During placing your order you will find a notes box, please enter the names require here. If no names are entered the letter will simply read "Hello there". If you forget to enter the name you have 24 hours in which you can make contact with us via email to advise a change to your order otherwise the letter will be sent generic.</dd>

				<dt><a href="#">How many children's names can be inserted in the personalised letter?</a></dt>
				<dd>You can have as many children's names as you wish but please note the set will still only contain 1 candy cane.</dd>
			
				<dt><a href="#">How can I pay for my purchase?</a></dt>
				<dd>Paying for your purchase is easy and safe as we use PayPal for all transactions. If you would like to make a payment in other ways please feel free to contact us at headelf@chritsmaself.co.uk before placing an order.</dd>

				<dt><a href="#">How can I contact you?</a></dt>
				<dd>
					You can contact us by:
					<ul class="list-unstyled">
						<li>Email to: - <a href="mailto:{{ email }}">{{ email }}</a></li>
						<li>Face book:  - {{ facebook }}</li>
					</ul>	
						
				</dd>

				<dt><a href="#">How long will it take to receive my order?</a></dt>
				<dd>Due to the personalised nature of our goods orders will be despatched within 7 days. We aim for 48 hours but at busier periods this may increase.
	All items are posted via MyHermes Courier. They do not require a signature but are fully traceable. MyHermes can take 3-5 days to deliver your item. 
	If after placing your order you still haven’t received your item after 15 working days then please contact us and we will do our very best to track your parcel.
	If for any reason your items are delayed we will inform you via the email account used for payment.</dd>

				<dt><a href="#">What if I'm not happy with my goods?</a></dt>
				<dd>We hope that you will be very happy with your Christmas Elf but if for any unfortunate reason you have a problem with your order please contact us and we will be happy to resolve any issues.</dd>

				<dt><a href="#">What if my items are damaged?</a></dt>
				<dd>Please supply us with a photograph of the damage along with any outer packaging if relevant and we will work with you to rectify the situation.</dd>

			</dl>

		</div>

	</section>

{% endblock %}