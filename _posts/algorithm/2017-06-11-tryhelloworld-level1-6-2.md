---
layout: post
title:  "[Try Hello World] Level1 행렬의 덧셈"
category: [Solve Algorithm!, tryhelloworld]
tags:
  - Alogorithm
  - Level1
comments: true
---

## 행렬의 덧셈
행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다.<br>
2개의 행렬을 입력받는 sumMatrix 함수를 완성하여 행렬 덧셈의 결과를 반환해 주세요.<br>

예를 들어 2x2 행렬인 A = ((1, 2), (2, 3)), B = ((3, 4), (5, 6)) 가 주어지면, 같은 2x2 행렬인 ((4, 6), (7, 9))를 반환하면 됩니다.(어떠한 행렬에도 대응하는 함수를 완성해주세요.)

- 내 풀이

```python
def sumMatrix(A,B):
    result = [[] for k in range(len(A))]
    for i in range(len(A)):
    	for j in range(len(A[i])):
        	result[i].append(A[i][j] + B[i][j])

    return result

print(sumMatrix([[1,2,4], [2,3,5], [4,5,6]], [[3,4,6],[5,6,7],[3,5,7]]))
```

- 다른 사람 풀이

```python
def sumMatrix(A,B):
  answer = [[A[i][j] + B[i][j] for j in range(len(A[0]))] for i in range(len(A))]

  return answer
```

### *느낀점*
- 최대공약수, 최소공배수 문제의 경우, 수학적 접근이 미숙해서 결국 검색으로 gcd 모듈이 있다는 것을 알게되어 사용하였다.
- 모듈에 의존하기보다는 코드가 길어지더라도 원리를 알고 직접 풀어보는 시간을 갖는 것이 중요한 것 같다.    
