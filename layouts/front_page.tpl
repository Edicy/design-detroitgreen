<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">

<head>
{% include "SiteHeader" %}
  <title>{% unless page.site_title == "" %}{{ page.site_title }} &gt; {% endunless %}{{page.title}}</title>
</head>

<body id="front">

	<div id="wrap" class="content-hyphenate">

   {% include "Languagemenu" %}

    <div id="container">

      <div id="header">

        {% include "Mainmenu" %}

        {% if site.search.enabled %}
        <form action="" id="search" class="edys-search">
          <div>
              <input type="text" class="textbox" id="onpage_search" placeholder="{{  "search" | lc }}" />
          </div>
        </form>
        {% endif %}

      </div> <!-- //header -->

      <div id="content">

        <div id="content_left">

          <div id="bigpic" class="clearfix" data-search-indexing-allowed="true">
            {% content name="image" %}
          </div> <!-- //bigpic -->

          <div id="slogan">
            <table>
              <tr>
                <td class="clearfix">

                  {% editable site.header %}

                </td>
              </tr>
            </table>
          </div> <!-- //slogan -->

          <div id="frontbox">
            <div id="frontbox-inner" class="clearfix" class="clearfix" data-search-indexing-allowed="true">
            {% content %}
            </div>
          </div> <!-- //frontbox -->

        </div> <!-- //content_left -->

        <div id="content_right" class="clearfix">

            {% include "News" %}

          <div id="darkbox">

            <div id="darkbox_inner">
              <div id="darkbox_inner2" class="clearfix" class="clearfix">
              {% content name="product" xpage="true" %}
              </div>
            </div> <!-- //darkbox_inner -->

            <div id="blackbox">
                    <div id="blackbox_inner" class="clearfix">
                    {% content name="product-inner" xpage="true" %}
              </div>
            </div> <!-- //blackbox -->
          </div> <!-- //darkbox -->

        </div> <!-- //content_right -->

        <div class="clearer"></div>

      </div> <!-- //content -->

    </div> <!-- //container -->

  </div> <!-- //wrap -->

  <div id="footer">

    <div id="footer_inner" class="clearfix">{% content name="footer" xpage="true" %}</div>

    <div id="edicy">
      {% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}
    </div>

  </div> <!-- //footer -->
{% unless editmode %}{{ site.analytics }}{% endunless %}
  {% include "JS" %}
</body>
</html>
