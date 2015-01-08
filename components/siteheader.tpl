	<meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
        <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	{% stylesheet_link "layout.css?detroit1" %}
	{% stylesheet_link "style.css?detroit" %}
	{% if editmode %}{% stylesheet_link "assets/admin/editmode.css" static_host="true" %}{% endif %}
        <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

        {% if site.search.enabled %}
	{% stylesheet_link "assets/site_search/2.0/site_search.css" static_host="true" %}
        <style type="text/css">
          #navmenu {
            width: 700px;
          }
        </style>
        {% endif %}
<!--[if IE]><link rel="stylesheet" type="text/css" href="http://static.edicy.com/assets/ie.css" /><![endif]-->