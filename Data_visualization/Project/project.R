#PROJECT
install.packages("readxl")
library(readxl)
install.packages("writexl")
library(writexl)
install.packages("dplyr")
library(dplyr)
install.packages("ggmap")
library(ggmap)
install.packages("ggplot2")
library(ggplot2)


getwd()
setwd("C:/Users/hallym/Desktop/")

Building_data <- read_excel("F_FAC_BUILDING.xlsx", col_names = T)
Building_data_not_na <- Building_data %>% 
  (!is.na(BLD_NM) & !is.na(DONG_NM) & !is.na(HEIGHT))
Building_data_not_na

Building_height <- Building_data_not_na %>% filter(HEIGHT > 50 & HEIGHT <100) 
Building_height

Building_trust <- Building_height %>% filter (USABILITY == "14000")
Building_trust

write_xlsx(Building_trust, path = "Building_trust.xlsx")


loc1 <- read_xlsx("one1.xlsx")
loc4 <- read_xlsx("four2.xlsx")
loc5 <- read_xlsx("five.xlsx")
loc6 <- read_xlsx("six.xlsx")
loc7 <- read_xlsx("seven.xlsx")
loc8 <- read_xlsx("eight.xlsx")

loc2 <- read.csv("서울지하철2호선위경도정보.csv", header = T)
loc3 <- read.csv("서울지하철3호선역위경도정보.csv", header= T)

loc5 <- read.csv("국가철도공단_수도권5호선_역위치_20211118.csv", header= T)
loc6 <- read.csv("국가철도공단_수도권6호선_역위치_20211118.csv", header= T)
loc7 <- read.csv("국가철도공단_수도권7호선_역위치_20211118.csv", header= T)
loc8 <- read.csv("국가철도공단_수도권8호선_역위치_20211118.csv", header= T)

lab_name <- c("2호선", "3호선")
lab_color <- c("green", "red")

new_building <- read_excel("Building_trust.xlsx", col_names = T)
new_building

register_google("AIzaSyBrtRhBJMaPV0c0BUwKo-6s-cXUwY4qglc")
center = c(mean(new_building$경도), mean(new_building$위도))

addr <- c("종로구 동숭동 1-42", 
          "중구 필동 필동로 80")

gc <- geocode(enc2utf8(addr))

df <- data.frame(name= c("옥상쓸래 1호점", "옥상쓸래 2호점"),
                 lon = gc$lon, lat = gc$lat)

df

map <- get_googlemap(center = center, maptype = "roadmap",
                     size = c(640, 640), zoom =12, markers = gc)


gmap <- ggmap(map)
gmap + geom_point(data = new_building, 
                  aes(x = 경도, y = 위도, color = HEIGHT),
                  size = 5, alpha=  0.7) + labs(x = "Longitude", y = "Latitude",
                    title = "서울시 건물 높이 데이터" , color = "높이") + 
  geom_point(data = loc2, aes(x = LON, y = LAT), size= 1.5, color = "green") +
  geom_point(data = loc3, aes(x = LON, y= LAT), size= 1.5, color= "red") + 
  geom_point(data = loc1, aes(x = 경도, y= 위도), size= 1.5, color= "blue") +
  geom_point(data = loc4, aes(x = 경도, y= 위도), size= 1.5, color= "cyan") +
  geom_point(data = loc5, aes(x = 경도, y= 위도), size= 1.5, color= "purple") +
  geom_point(data = loc6, aes(x = 경도, y= 위도), size= 1.5, color= "brown") +
  geom_point(data = loc7, aes(x = 경도, y= 위도), size= 1.5, color= "darkgreen") +
  geom_point(data = loc8, aes(x = 경도, y= 위도), size= 1.5, color= "pink") +
  geom_text(data = df, aes(x=lon, y = lat+0.005), size = 3, label = df$name, color = 'orange')




