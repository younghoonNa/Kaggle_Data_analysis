
getwd()

setwd("C:/Users/hallym/Desktop/R")
getwd()

install.packages("animation")
install.packages("png")
library(animation)
library(png)

install.packages("dplyr")
library(dplyr)


tat <- read.csv("도로교통공단_시도_시군구별_월별_교통사고(2018).csv") # 동일한 방법
tat

dta2 <- tat %>% filter(시군구=="마포구") %>% select(월, 발생건수, 사망자수, 부상자수, 중상, 경상, 부상신고)
dta2


options(repr.plot.width=20, repr.plot.height=10)

par(bg="yellow")
plot(dta2$발생건수, main= paste("서울시 마포구 월별 교통사고 통계(2018)", "\n", "출처[한국도로공단]"),
     xlab="월", ylab="건수", type='o', axes = F,
     col=1, ylim = c(0,400),  pch=1, lwd=2)
lines(dta2$부상자수, type='o', col=2, pch=2)
lines(dta2$중상, type='o', col=3, pch=3, lwd=2)
lines(dta2$경상, type='o', col=4, pch=4, lwd=2)
lines(dta2$부상신고, type='o', col=5, pch=5, lwd=2)
axis(1, at = 1:12, labels = seq(1,12))
axis(2, ylim = c(0,400))

text(1, 250, "229건", col= "red")

arrows(8, 350, 12, 180, col = "red", lwd = 4)
text(8, 370, "171건으로 가장 적습니다.", col= "red")


legend("topright", c("발생건수", "부상자수", "중상", "경상", "부상신고"), 
       cex=0.8, col=c(1:5), fill=c(1:5),  bg="white", density = 90)


df_m2 <- tat %>% filter(시도 == "서울") %>% group_by(시군구) %>%
  summarise("시군구별 발생건수" = sum(발생건수)) 
df_m2


par(bg = "darkgray", mar = c(4,5,5,4), oma = c(2,2,2,2), pty = 'm')
barplot(df_m2$"시군구별 발생건수", beside = T, col = rainbow(30), border= "white",
      space = 1, names.arg = df_m2$시군구, las = 2, ylim = c(0,3800))
title("2018년 서울시의 교통사고 발생 건수", font = 2, xlab = "시군구", ylab = "수치")
grid(10 ,7, lty = 2, lwd =1, col = "white")
box(which = 'inner', col = "black", lwd = 2)

for (i in c(1:25)) {
  points(2*(i-1)+1.5, df_m2[i,2], cex= 3, col = rainbow(30))
  
}

df_p3 <- tat %>% filter(시군구 == "용산구") %>% select(발생건수, 부상자수, 중상, 부상신고)
df_p3

df_m3 <- as.matrix(df_p3)
df_m3


par(bg="yellow4")
name <- c("발생건수", "부상건수", "중상", "부상건수")
barplot(df_m3, density=120, main="서울시 용산구 월별 교통사고 통계(2018)",
        ylab="건수", beside = T, col=rainbow(12), ylim = c(0, 200),
        names.arg = name)
points(1.5, 100, cex = 4, col = 'white', lwd = 4)
points(24.5, 130, cex = 4, col = 'white', lwd = 4)
points(38.5, 20, cex = 4, col = 'white', lwd = 4)
points(50.5, 8, cex = 4, col = 'white', lwd = 4)

grid(4, 6, lwd = 1, lty = 2, col = 'black')

legend(30, 200 , density=30, angle=50, name, ncol=2, cex=0.7, fill=rainbow(12), lty=1,
       box.lty=1, box.col = "white")
legend(30,250, ncol = 4, name, cex=0.7, fill=rainbow(12), box.lty=1, bg="yellow")

s = sum(df_p4$발생건수)

df_p4 <- tat %>% filter(시군구 == "용산구") %>% group_by(시군구) %>% select(월, 발생건수)
df_p4

df_m4 <- round(df_p5$발생건수/s * 100,2)
df_m4

par(bg = "darkblue", fg = "white")
pie(df_p4$발생건수, col = rainbow(length(df_p5$시군구)), main = 
      paste("2018년도 용산구의 교통사고 정보 시각화.", "\n", "출처[국민건강보건공단]"),
    cex = 1, labels = paste(df_p5$월,"\n", df_m4, "%"), font = 2)
box(which = 'inner', lwd = 2, col = "white")
arrows(-0.3, 0.3, 0.2, 1.2, col = "red", angle = 0)
arrows(0.1, 1, 1, 1, col = "red")
text(2,1, "가장 많은 사고가 발생한 달은 5월")

df_p5 <- tat %>% filter(시군구 == "중랑구") %>% group_by(시군구) %>% select(월, 발생건수)
df_p5

df_m5 <- round(df_p5$발생건수/s * 100,2)
df_m5

install.packages("plotrix")
library(plotrix)

options(repr.plot.width=15, repr.plot.height=10)

par(bg = "pink", fg = "white")
pie3D(df_p5$발생건수, col = rainbow(length(df_p5$시군구)), main = 
      paste("2018년도 중랑구의 교통사고 정보 시각화.", "\n", "출처[국민건강보건공단]"),
    cex = 1, labels = paste(df_p5$월,"\n", df_m5, "%"))
box(which = 'inner', lwd = 2, col = "white")
arrows(-0.4, 0.3, -0.4, 1.2, col = "red", angle = 0)
arrows(-0.4, 0.94, 2, 0.94, col = "red")

