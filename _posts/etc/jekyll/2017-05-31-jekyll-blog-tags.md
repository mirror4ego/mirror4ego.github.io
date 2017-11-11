### 1. 블로그 루트 폴더에 tags.md 넣기
- 이 tags.md 는 모든 태그들을 출력해준다.

```
bbungsang.github.io
├─── _includes
├─── _layouts
├─── _posts
├─── css
├─── [tags.md]
└─── ...
```
```html
{% raw %}
---
layout: page
permalink: /tags/
title: Tags
---

<ul class="tag-cloud">
{% for tag in site.tags %}
  <span style="font-size: {{ tag | last | size | times: 100 | divided_by: site.tags.size | plus: 70  }}%">
    <a href="#{{ tag | first | slugize }}">
      {{ tag | first }}
    </a> &nbsp;&nbsp;
  </span>
{% endfor %}
</ul>
{% endraw %}
```

<br>
### 2. \_includes/tags.html 추가해주기
- 포스트 상단에 태그들을 출력해 주는 페이지다.

```html
{% raw %}
<img src="/images/tag-256.png" alt="Tags: " class="tag-img"/>
<div class="post-tags">
  {% if post %}
    {% assign tags = post.tags %}
  {% else %}
    {% assign tags = page.tags %}
  {% endif %}
  {% for tag in tags %}
  <a href="/tags/#{{tag|slugize}}">{{tag}}</a>{% unless forloop.last %},{% endunless %}
  {% endfor %}
</div>
{% endraw %}
```

<br>
### 3. \_layouts/post.html 에 include 해주기
- 포스트에 태그가 나오도록 위의 tags.html 파일을 include 해준다.

```html
{% raw %}
---
layout: default
---

<div class="post">
  <h1 class="post-title">{{ page.title }}</h1>
  <span class="post-date">{{ page.date | date_to_string }}</span>
  {% include post_tags.html %}
  <br/>
  {{ content }}
</div>
{% endraw %}
```

<br>
### 4. 사용하기
- 아래와 같이 포스트에 태그를 붙일 수 있다.
