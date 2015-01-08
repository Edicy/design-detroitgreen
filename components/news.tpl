<div id="news">{% for article in site.latest_articles limit:1 %}&nbsp;
  <h1>{{"news"|lc}}</h1>
    <table>
      {% for article in site.latest_5_articles %}
        <tr>
          <td class="first">{{ article.created_at | date:"%d.%m" }}</td>
          <td><a href="{{ article.url }}" class="newslink">{{ article.title }}</a></td>
        </tr>
      {% endfor %}
    </table>{% endfor %}
</div> <!-- //news -->
      
