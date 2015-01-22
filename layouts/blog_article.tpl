<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
{% include "SiteHeader" %}
{{ blog.rss_link }}
  <title>{{article.title}} &laquo; {{page.title}} | {{site.name}}</title>
</head>

<body>

	<div id="wrap">

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
            <div class="blog">

              <div class="blog_heading">
                <h1>{% editable article.title plain="true" %} <span>{{ article.created_at | format_date:"short" }}</span></h1>
                <span>
                  <span>{{ article.author.name }}</span> &nbsp;

                <div class="clearer"></div>
              </div>
                  <div class="clearfix" data-search-indexing-allowed="true">
              {% editable article.excerpt %}
                  </div>
              <div id="articlebody" class="clearfix" data-search-indexing-allowed="true">
              {% editable article.body %}
              </div>
              <div class="comment">
{% unless article.new_record? %}
                <a name="comments"></a>
                <h1>{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span></h1>

{% endunless %}
{% for comment in article.comments %}



                  <div class="comment_inner edy-site-blog-comment">
                    {{ comment.body }}
                    <br />
                    <span><span>{{ comment.author }}</span> &nbsp;|&nbsp; <span>{{ comment.created_at | format_date:"long" }} {% removebutton %}</span></span>
                  </div> <!-- //comment_inner -->



{% endfor %}
</div> <!-- //comment -->

               {% commentform %}
{% unless comment.valid? %}<ul>
{% for error in comment.errors %}
<li>{{ error | lc }}</li>
{% endfor %}
</ul>{% endunless %}
               <div>
                    <h2>{{"add_a_comment"|lc}}</h2>

                    <table>
                      <tr>
                        <td class="comment_label">{{"name"|lc}}:</td>
                        <td><input type="text" name="comment[author]" class="textbox" value="{{comment.author}}" /></td>
                        <td style="text-align: right;">{{"email"|lc}}: &nbsp;&nbsp;&nbsp;</td>
                        <td class="form_td_input"><input type="text" name="comment[author_email]" class="textbox" value="{{comment.author_email}}" /></td>
                      </tr>
                    </table>
                    <table>
                      <tr>
                        <td class="comment_label">{{"comment"|lc}}:</td>
                        <td class="form_td_textarea" ><textarea cols="20" name="comment[body]" rows="5">{{comment.body}}</textarea></td>
                      </tr>
                      <tr>
                        <td colspan="2" style="text-align: right;"><input type="submit" class="submit" value="{{"submit"|lc}}" /></td>
                      </tr>
                    </table>
                </div>
              {% endcommentform %}
            </div> <!-- //blog -->
            </div>
          </div> <!-- //content_left_inner -->

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
