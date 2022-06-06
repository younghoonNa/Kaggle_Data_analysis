데이터 시각화 R

# Week 9 

## Hist : 데이터의 빈도수를 막대 그래프로 그리는 함수
- 가장 큰 값과 작은 값을 찾는다.
- 최댓값과 최솟값 사이를 적절한 구간으로 나눔
- 각 구간의 대표하는 대표값 설정
- 각 구간의 값의 개수 확인 
- 구간의 도수와 전체 값 간의 비율 계산 후 누적도수 계산
``` R:
breaks = 12 # 구간을 12개로 나눔
freq  = F   # freq = FALSE y축의 단위가 상대도수 (probability)
freq  = T   # freq = TRUE y축의 단위가 도수
```

## igraph

### edge 부분
- edge.color , edge.width, edge.lty 는 알거야
- edge.label.family   : 라벨 글자의 종류 serif, sans, mono
- edge.label.font     : 라벨 글자의 폰트
  -  1. 일반, 2.볼드, 3. 이탤릭, 4.볼드이탤릭.
- edge.label.color    : 라벨의 색상
- edge.arrow.size     : 화살의 크기 설정
- edge.arrow.width    : 화살의 두께 설정하는 파라미터
- edge.arrow.mode     : 화살의 머리 유형을 설정, 
  - 1 = 역방향 , 2 = 순방향(Default), 3 = 양쪽방향 화살, 4 = 화살표 없음
  - directed = F 일경우 화살표 없음 . T는 있음.
  
### vertex 
- vertex.size  : 점의 크기
- vertex.color : 점의 색상
- vertex.shape : 점의 모양
- vertex.frame.color : 점 윤곽 색상
- vertex.label  : 점의 레이블
- vertex.label.color : 레이블의 색상
- vertex.label.font , vertex.label.cex 
- vertex.label.family : 점 레이블의 종류
- vertex.label.degree : 점 레이블 방향 

### Layout
- layout.random
- layout.circle
- layout.kamada.kawai
- layout.fruchterman.reingold
- layout.lgl
- layout.mds

## treemap
- vSize : 면적으로 보여줄 데이터 설정
- index : 같은 크기를 갖는 데이터에 수치값 이름, 조 등을 표시

## stars : 나이팅게일 차트
- draw.segment : 칼라로 할지 흑백으로 할지 
- flip.labels  : 라벨을 일자로 나열해서 표시할지(F) 지그재그로 출력하여 겹치는거 방지(T)
- frame.plot   : 논리값을 가지며, T일 때 plot에 사각형 프레임을 그림
- col.stars    : 벡터를 인수값으로 가져 칼라로 표시
- full         : 스타그래프를 360도의 원으로 그릴지 말지 (F는 반원)

## 체르노프 얼굴 그림 : aplpack
- faces 함수를 통해 그림. , type을 통해 그림 바꿀 수 있음
  - faces(face.type = 0) -> 흑백
  - faces(face.type = 1) -> 컬러
  - faces(face.type = 2) -> 산타

 
# R 10주차
- 1차원 : 벡터, 2차원 : 행렬, 3차원 : 배열
- 행렬은 한가지 데이터 타입으로 구성, 여러가지 데이터 타입은 Data Frame
- byrow -> row 단위로 구성, byrow의 default는 F로 col 단위로 입력이 됌.
- 전치행렬 -> `t(matrix)`
- col = rgb(1,2,3,4) -> rgb는 각각 1,2,3 투명도 4
- 행렬에 colnames(행렬명) <- c("name01", "name02", "name03") 을 통해 이름 지정 가능
- 똑같이 rownames(행렬명) 을 통해 행렬의 행 이름 지정 가능
- R의 인덱스 시작은 1부터

### 리스트
- R에서의 리스트는 keyvalue 형태
- 이런 형태를 여러개로 만들고 싶으면 데이터 프레임으로 만듬.
- subset(data.frame, 조건식)
  -  조건에 맞는 답 반환.
- 1부터 24의 숫자로 (2,3,4) 차원의 배열 만들기
  - `array(1:24, dim = c(2,3,4))`

## 시각화
- Image() <- matrix형태의 데이터에 Image 함수를 씌우면 스칼라 값에 해당하는 사각형을 그려서 반환
  - rainbow를 통해 사각형을 만들 수 있음.
- persp() : 삼차원 데이터를 2차원의 x-y 평면에 투영하여 투시도를 그리는 함수
- contour() 를 사용하여 등고선 그리기 가능
- fill.contour() 를 사용하여 색칠된 등고선 get 가능
- 

