---
layout: post
title:  "[Try Hello World] Level1 문자열 내 p와 y의 개수"
category: [Solve Algorithm!, tryhelloworld]
tags:
  - Alogorithm
  - Level1
comments: true
---

## 문자열 내 p와 y의 개수
numPY함수는 대문자와 소문자가 섞여있는 문자열 s를 매개변수로 입력받습니다.

s에 'p'의 개수와 'y'의 개수를 비교해 같으면 True, 다르면 False를 리턴하도록 함수를 완성하세요. 'p', 'y' 모두 하나도 없는 경우는 항상 True를 리턴합니다.

예를들어 s가 "pPoooyY"면 True를 리턴하고 "Pyy"라면 False를 리턴합니다.

- 내가 푼 것

```python
def numPY(s):
	p_count = 0
	y_count = 0

	for i in s:
		if i == "p" or i == "P":
			p_count += 1
		elif i == "y" or i == "Y":
			y_count += 1
	print(p_count, y_count)

	if p_count == y_count:
		return True
	return False

print( numPY("YbYYYpppEPRm") )
print( numPY("Pyy") )
```

- 다른 사람 풀이

```python
def numPY(s):
    return s.lower().count('p') == s.lower().count('y')
```

#### *소감*
- 이번 알고리즘은 내 기준에서 매우 어려웠다. 코드 엄청 긴 것 보소>.0 그에 비해 다른 사람이 한 줄로 풀어낸 것을 보노라면 어김없이 현타가 찾아온다.
