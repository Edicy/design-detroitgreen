<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">

<head>
{% include "SiteHeader" %}
{{ blog.rss_link }}
  <title>{% unless page.site_title == "" %}{{ page.site_title }} &gt; {% endunless %} {{page.title}}</title>
</head>

<body>

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

      {% include "submenu" %}

      <div id="content">

        <div id="content_left">

          <div id="slogan">
            <table>
              <tr>
                <td class="clearfix">
                  {% editable site.header %}
                </td>
              </tr>
            </table>
          </div> <!-- //slogan -->

          <div id="content_left_inner">
            <div id="content_left_inner2" class="clearfix">
            {% addbutton class="add-article" %}

            {% for article in articles %}
              <div class="blog">

              <div class="blog_heading">

                <h1><a href="{{ article.url }}">{{ article.title }}</a> <span>{{ article.created_at | format_date:"short" }}</span></h1>
                <span>
                  <span>{{ article.author.name }}</span>
                </span>

                <div class="clearer"></div>
              </div>
                <div class="clearfix">
                {{ article.excerpt }} <a href="{{ article.url }}">{{"read_more"|lc}}</a>, <a href="{{ article.url }}#comments">{{ "comments_for_count" | lc }}: {{article.comments_count}}</a><br />
                </div>

            </div> <!-- //blog -->
{% endfor %}
             </div>
          </div> <!-- //content_left_inner -->

        </div> <!-- //content_left -->

        <div id="content_right" class="clearfix">


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
