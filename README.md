# Kaggle_Data_analysis
케글 데이터를 활용한 데이터 분석 소스코드 모음집.

--- 
## R - 데이터 시각화


#### as.matrix로 변환하여 그림 그리기 vs ~ 를 사용한 그림 그리기.
- barplot((df$y축으로사용될데이터 ~ df$x축으로사용될데이터) col = rainbow(12), main = "Main title")
- barplot(as.matrix(df[1:length, 2:legnth]), main = "Main")
