{% extends '../layout/layout.swig' %}

{% block content %}

	<section class="section section--highlight">

		<ul class="breadcrumbs list-unstyled l-wrap">
			<li><a href="/">Home</a></li>
			<li>Contact</li>
		</ul>

		<div class="l-wrap">
		
		<h1 class="h-page">Contact Us</h1>
	
		<p>Questions, concerns or comments, we love to hear from you and always happy to help</p>

		<p>You can contact us in a number of ways:</p>

		<ul class="list-contact">
			<li>Send an email to <a href="mailto:{{ email }}">{{ email }}</a></li>
			<li>Send a messae through facebook - 	<a href="{{ facebook }}">{{ facebook }}</a></li>
			<li>Send us a message through twitter - <a href="{{ twitter }}">{{ twitter }}</a></li>
		</ul>

		</div>

	</section>

{% endblock %}