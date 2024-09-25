---
layout: goallist
title: 목표 리스트
permalink: /목표/
---

<ul>
  {% for page in site.pages %}
    {% if page.path contains '_goallist' and page.name != 'index.md' %}
      <li><a href="{{ page.url }}">{{ page.title }}</a></li>
    {% endif %}
  {% endfor %}
</ul>

