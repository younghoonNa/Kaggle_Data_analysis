데이터 시각화 R

--- 
# 내가 못외운거
- las = "Label of Axis Style"
- barplot(cex.names -> 글자 크기 조정가능)
- mtext("표시내용", side = 하좌우상-1234, line = 위치(0123), 
           adj = 좌우로 치우침, cex = 크기, outer = 외부마진에 그릴까 말까(default = F) T일땐 oma 설정필요 

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
    - text.font -> 범례 제목의 글자 
    - box.col   -> 범례 박스의 Color

  ### 범례를 화면에 표현하는 방법
    - (x,y)를 이용하여 출력
    - 위치를 나타내는 문자열 이용
       - "bottomright", "bottom", "bottomleft", "left", "topleft", "top", "topright", "right", "center"
    - `locator()` 사용자가 특정 위치를 마우스로 클릭하면 그 위치에 범례 생성.  (colab에서는 실행 불가.)

- point()      : 지정한 좌표 위에 점을 표시
  - 1 ~ 25 까지 정수로 표시하는 점 도형
  - 32 ~ 127까지 정수로 표시하는 ASCII 문자
  - 직접 입력한 문자를 출력 
- lines()      : 두 점에 좌표를 `이어서` 선을 그리는 함수
  - `lty` : 0 ~ 6 -> c("투명선", "실선", "대쉬선", "점선", 6에 까까워질수록 선은 길어지고 사이 점 줄어듬)
  - 'lty` : 0 ~ 6 -> c("blank", "soild", "dashed", "dotted", "dotdash", "twodash")
  -  `lty` 는 사용자 지정 패턴 정의가능. `lty = BW` 일 경우 black and white로 그림 
- grid()       : 좌표평면에 격자 모양을 그리는 함수
  - `grid(3,4)` 는 x축으로 3개의 격자를, y축으로 4개의 격자를 생성.
  -  따라서 x축과 평행한 2개의 수직선, y축과 평행한 3개의 수평선을 그림.  grid(n,m)은 n-1개의 x축과 평행한 선, m-1개의 y축과 평행한 선을 그림.
- `abline()`    : 직교 좌표에 그림을 그리는 함수
  - abline(a=10, b=2) 일 경우 y = 2x + 10 인 Linear Graph를 그림.
  - abline(h=10), same as y = 10 and abline(a=10, b=0) Draw Horizontal line `ㅡ` 
  - abline(v=2), same as x = 2 and abline(a=0, b=2), Draw Vertical line `|`
- `arrows()`     : 화살표를 그리는 함수
  - (x1, y1) 과 (x2, y2)를 연결하는 화살표를 그림.
  - angle()  : 화살표의 각도 설정. Default = 30
  - length() : 화살표의 길이, Default = 0.25
  - code()   : code=0 화살촉이 없음, code=1 시작점에 화살촉 존재, code=2, 끝점에 화살촉이 있음(default), code=3 시작점과 끝점에 화살촉 있음.
  - lty, lwd, col 을 사용하여 선의 모양, 선의 굵기, 색 지정 가능.  
  - `adj`를 사용하여 text의 위치 조정 가능.
- `segments()`   : 점들을 그룹으로 만든 후, 각각의 그룹별로 선을 그리는 함수
  - `Segments(x1,y1,x2, y2)` 는 점(x1, y1) 과 점(x2, y2)를 잇는 선을 넣습니다.
  - `lwd : line width, col : color, lty : line type`
  - (x1,y1)과 (x2, y2) 가 각각 크기가 같은 n*1 크기의 vector일 경우 각각을 잇는 line을 그림.
- rect()       : 사각형을 그리는 함수 `(xleft, ybottom)` and `(xright, ytop)`
  - xleft : 사각형의 왼쪽 x좌표
  - ybottom : 사각형의 아래족 y좌표
  - xright : 사각형의 오른쪽 x좌표
  - ytop : 사각형의 위쪽 y좌표 
  - col = 내부 칼라, `border` : 사각형 테두리의 칼라, 
  - density : 사각형 안을 채우는 밀도, angle은 내부를 채우는 선의 기울기를 나타냄 (default=45)
  - lty, lwd
- `polygon()`    : 좌표 점들을 이어서 다각형을 그리는 함수
  - `rect`와 동일 
- box()        : 현재의 그래픽 장치의 특정 영역에 사각형을 그리는 함수
  - `which = "outer"` : 그래픽 장치의 바깥쪽 
  - `which = "inner"` : 바깥 마진의 안쪽 영역, inner와 figure는 같을수도있음 하나의 그래프에 여러개를 그리면 차이가 남.
  - `which = "figure"` : 그림 영역의 테두리 
  - `which = "plot"` : 플롯 영역의 테두리


