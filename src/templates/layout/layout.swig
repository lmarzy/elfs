<!doctype html>
<!--[if IE 9]><html class="no-js lt-ie10"> <![endif]-->
<html class="no-js" lang="en">
<head>

	{% include "../partials/head/meta.swig" %}
	
	{% include "../partials/head/css.swig" %}

	{% include "../partials/head/analytics.swig" %}

</head>

<body>

	{% include "../partials/other/svg.swig" %}
	
	{% include "../partials/structure/header.swig" %}
	
	<main role="main">

  {% block content %}{% endblock %}

	</main>

	{% include "../partials/structure/footer.swig" %}

	<script>

			var frmPayPal = document.getElementById('frmPayPal');


			function validateForm(e) {

			    var frmPayPalName = document.getElementById('frmPayPalName'),
			    		frmPayPalMessage = document.getElementById('frmPayPalMessage');

			    if (frmPayPalName.value==null || frmPayPalName.value=="") {
			        
			        frmPayPalName.classList.add('is-invalid');
			        frmPayPalMessage.classList.add('active');
			        e.preventDefault();
			    } else {
			    		frmPayPalName.classList.add('is-valid');
			      	frmPayPalMessage.classList.remove('active');
			    }
			}

			frmPayPal.addEventListener('submit', validateForm, true);


	</script>

</body>
</html>