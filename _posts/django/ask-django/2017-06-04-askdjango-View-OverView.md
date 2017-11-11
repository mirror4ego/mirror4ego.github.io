---
layout: post
title:  "[장고 기본편] 4. View"
category: [여행 블로그 만들기, travel]
tags:
  - Django
  - AskDjango
  - View
  - FBVCBV
comments: true
---

>| ٩(๑òωó๑)۶ 아, 아, 마이크 테스트 |<br>
이 마크다운은 이진석 선생님의 'Ask Django VOD 장고 기본편(Feat.여행 블로그 만들기)'를 토대로 작성되었습니다.

## View
- URLConf로부터 받은 객체
  - 첫번째 인자로 `HttpRequest` 인스턴스를 받는다.
  - 또한 반드시 `HttpRequest` 인스턴스를 리턴해야한다.
- 뷰는 크게 `함수기반 뷰`와 `클래스기반 뷰`로 구분된다.

> *Function Based View* 예시

```python
from django.http import HttpResponse

def post_list(request):
  name = 'Hello'
  return HttpResponse('''
    <h1>{}, World!</h1>
  '''.format(name=name))
```

> *Class Based View* 예시

```python
from django.http import HttpResponse
from django.views.generic import View
# 뷰 사용패턴을 일반화시켜놓은 뷰의 모음

class SampleTemplateView(object):
  @classmethod
  def as_view(cls, template_name):
    def view_fn(request):
      return render(request, template_name)
    return view_fn

fbv_view = SampleTemplateView.as_view('myapp/sample_template.html')
# as_view() 클래스 함수를 통해 함수기반 뷰에 입각한 객체 생성, 즉 클래스를 통해 함수를 호출
```
<br>

### Template 공통
[myapp/templates/myapp/post_form.html]<br>
- table 태그 위에 `csrf_token` 가 와야하는데 지킬 서버에서 오류를 일으키기 때문에 따로 기재합니다.

```python
<form action="" method="post">
  <table>
    {{ form.as_table }}    
  </table>
  <input type="submit" />
</form>
```
<br>
뷰에 대한 더 자세한 내용이 궁금하다면 [Click!](https://bbungsang.github.io/tutorial/2017/06/03/django-tutorial-part3-2.html)
