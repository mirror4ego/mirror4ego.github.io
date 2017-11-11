---
layout: post
title:  "[인스타그램] 커스텀 유저 돌리기"
category: [인스타그램, instargram]
tags:
  - django
  - instargram
comments: true
---

### 커스텀 유저로 돌리기
- 장고가 제공하는 User 모델을 활용하기 위해 기존 User 모델을 그대로 활용하는 방법, 커스텀 User를 활용하는 방법이 있다.
- `기존 User 모델을 그대로 활용하는 방법` 중 User에 OneToOneField를 거는 방식은 유저 정보(필드)가 방대할 때, 인증에 필요한 최소한의 필수 정보만 사용하다가 필요한 시기에 필요한 정보만 활용할 수 있도록 다른 모델에 몰아넣거나(OneToOne기법),
- 기존 User 정보가 존재하며 해당 데이터를 보존해야 할 경우 사용한다.  
- 데이터가 없는 경우 일반적으로 커스텀 유저를 권장하기 때문에 커스텀 유저의 개념을 짚고 활용해보겠다.

#### AbstractUser 모델 상속한 사용자 정의 User 모델 사용하기
- 이 기법의 사용 여부는 프로젝트 시작 전에 하는 것이 좋다. 추후에 settings.AUTH_USER_MODEL 변경시 데이터베이스 스키마를 알맞게 재수정해야 하는데 사용자 모델 필드에 추가나 수정으로 끝나지 않고 완전히 새로운 사용자 객체를 생성하는 일이 된다.
- 이 기법은 기존 장고의 User 모델을 그대로 사용하므로 기본 로그인 인증 처리 부분은 장고의 것을 이용하면서 사용자 정의 필드를 추가할 때 유용하다.
- `member` 어플리케이션을 생성한다.
- settings.py 에 등록 후, member/models.py 작성

```python
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
    pass
```

[config/settins.py]
```python
# Custom User
AUTH_USER_MODEL = 'member.User'
```

[post/models.py]
```python
from django.conf import settings

User -> settings.AUTH_USER_MODEL
```
- post/models.py 에서 User 객체를 썻던 부분을 settings.AUTH_USER_MODEL로 바꿔준다.
