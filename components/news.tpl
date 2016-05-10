<div id="news">
  {% assign latest_articles_size = site.latest_articles | size %}
	{% if latest_articles_size > 0 %}
    <h1>{{"news"|lc}}</h1>
    <table>
      {% for article in site.latest_5_articles %}
        <tr>
          <td class="first">{{ article.created_at | date:"%d.%m" }}</td>
          <td><a href="{{ article.url }}" class="newslink">{{ article.title }}</a></td>
        </tr>
      {% endfor %}
    </table>
	{% endif %}
</div> <!-- //news -->
