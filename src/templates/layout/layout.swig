<!doctype html>
<!--[if IE 9]><html class="no-js lt-ie10"> <![endif]-->
<html class="no-js" lang="en">
<head>

	{% include "../partials/head/meta.swig" %}
	
	{% include "../partials/head/css.swig" %}

	{% include "../partials/head/js.swig" %}	

</head>

<body>

	{% include "../partials/other/svg.swig" %}
	
	{% include "../partials/structure/header.swig" %}

	{% include "../partials/sections/banner.swig" %}
	
	<main role="main">
  {% block content %}{% endblock %}
	</main>

	{% include "../partials/structure/footer.swig" %}

	{% include "../partials/foot/js.swig" %}

</body>
</html>