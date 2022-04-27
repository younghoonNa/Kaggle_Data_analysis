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

## igraph

### edge 부분
- edge.color , edge.width, edge.lty 는 알거야
- edge.label.family   : 라벨 글자의 종류 serif, sans, mono
- edge.label.font     : 라벨 글자의 폰트
  - 1. 일반, 2.볼드, 3. 이탤릭, 4.볼드이탤릭.
- edge.label.color    : 라벨의 색상
- edge.arrow.size     : 화살의 크기 설정
- edge.arrow.width    : 화살의 두께 설정하는 파라미터
- edge.arrow.mode     : 화살의 머리 유형을 설정, 
  - 1 = 역방향 , 2 = 순방향(Default), 3 = 양쪽방향 화살, 4 = 화살표 없음
  
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
