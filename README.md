# Kaggle_Data_analysis
케글 데이터를 활용한 데이터 분석 소스코드 모음집.

-- 
## Colab에서 실행할 때 꼭 필요한 소스코드

```
# 그래프 크기 조절.
options(repr.plot.width=13, repr.plot.height=10)
``` 

``` 
# 한글폰트
install.packages("extrafont")
library(extrafont)
system("sudo apt-get install fonts-nanum-coding")
font_import(pattern = "Nanum")
```

```
# 파일에 인코딩 형식 지정 -> cp949를 쓰면 꺠짐.
... <- read.csv("file path", fileEncodeing = 'cp949'
```

--- 
## R - 데이터 시각화


#### as.matrix로 변환하여 그림 그리기 vs ~ 를 사용한 그림 그리기.
- barplot((df$y축으로사용될데이터 ~ df$x축으로사용될데이터) col = rainbow(12), main = "Main title")
- barplot(as.matrix(df[1:length, 2:legnth]), main = "Main")
