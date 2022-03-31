데이터 시각화 R

---
# Week2

---
# Week3

---
# Week4
 
#### font 파라메타
#### srt(string rotation) 파라메타.

#### mar(margins) 파라메타.
#### oma(outer margins) 파라메타
- oma : 바깥 마진 조절 `par(oma = c(0,0,2,0))` 과 같은 형태로 사용, `하좌상우` 방향
- line을 통한 축 위치 조절 : axis(side = 1 , at = 1:5, labels = LETTERS[1:5], `line = 2`)  line을 통해 축의 위치 조정 가능.
#### mgp(main ground position) 파라메타.

#### bty (box type) 파라메타
#### pty (plot type) 파라메타
#### 도형그리기

# Week5

## 저수준 그래픽 함수.
- axis()       : `side = 1,2,3,4` 가능 각각 하좌상우 방향.
  - 'axis(side = 1)`
- title()      : 플롯에 타이틀을 출력하는 함수
  -  Main title, sub title, xlab, ylab 4개가 존재.
  -  outer : F이면 마진에 표시 (default), T면 바깥 마진에 추가로 표시
    -  `outer를 사용하기 위해선 oma = c(, , , ,) 필요!!!   
  -  line  : 마진이나 바깥 마진의 3개의 위치 중 하나를 선택. 작을수록 plot에 가까움.
- text()       : 플롯 영역에 문자를 출력하는 함수, (x,y) 좌표의 위치에 labels에 있는 텍스트 출력
  -  `adj = 0` : 좌표기준 `오른쪽`, `adj` = 0.5 : 좌표기준 `중앙` 이자 `default` value , `adj = 1` : 좌표 기준 `왼쪽`, `adj = x` : 좌표 기준 `x값의 크기만큼 왼쪽으로 이동`
  -  `pos =1 : 아래쪽`, `pos = 2 : 왼쪽`, `pos = 3 : 위쪽`, `pos = 4 : 오른쪽`
  -  offset : (x,y) 에서 offset 만큼 떨어진 문자열 간의 거리지정 가능.
- mtext()      : 마진이나 바깥 마진에 문자를 출력하는 함수
  - title() 함수와 함께 `line, outer` 파라미터 동일,
  - `side()` 파라미터는 `axis()` 함수와 동일하게 하좌우상
- legend()     : 범례
  1. <b> 범례의 종류 </b>
    - 점 : pch
    - 선 : lty
    - 면 : fill , density를 통해 면의 밀도 조절 가능.
    - 점+선 은 pch, lty 둘 다 쓰면 됨.

  2. <b> 범례의 파라메타 </b>
    - cex : 글자크기
    - col : 점이나 선의 컬러
    - lwd : 선 굵기
    - bg  : 백 그라운드 컬러
  
  3. <b> 범례의 박스 </b>
    - text.col  -> 범례 제목의 글자 칼라 
    - text.font -> 범례 제목의 글자 크기
    - box.col   -> 범례 박스의 Color

  ### 범례를 화면에 표현하는 방법
    - (x,y)를 이용하여 출력
    - 위치를 나타내는 문자열 이용
       - "bottomright", "bottom", "bottomleft", "left", "topleft", "top", "topright", "right", "center"
    - `locator()` 사용자가 특정 위치를 마우스로 클릭하면 그 위치에 범례 생성.  (colab에서는 실행 불가.)

- point()      : 지정한 좌표 위에 점을 표시
- lines()      : 두 점에 좌표를 `이어서` 선을 그리는 함수
- grid()       : 좌표평면에 격자 모양을 그리는 함수
- `abline()`    : 직교 좌표에 그림을 그리는 함수
- `arrows()`     : 화살표를 그리는 함수
- `segments()`   : 점들을 그룹으로 만든 후, 각각의 그룹별로 선을 그리는 함수
- rect()       : 사각형을 그리는 함수
- `polygon()`    : 좌표 점들을 이어서 다각형을 그리는 함수
- box()        : 현재의 그래픽 장치의 특정 영역에 사각형을 그리는 함수
