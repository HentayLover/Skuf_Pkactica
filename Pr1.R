#1.1.2
st1<-3
st2<-3
st3<-3
#Функция для расчёта формулы герона
f_geron<-function(st1,st2,st3){
  perimetr<-(st1+st2+st3)/2
  S<-perimetr*(perimetr-st1)*(perimetr-st2)*(perimetr-st3)
  S1<- sqrt(S)
  return(S1)
}
s<-f_geron(st1,st2,st3)
print(s)
#1.2.5


check_box_door <- function(A,B,C,M,K) {
 
  
  
  if ((A <= M && B <= K) || (A <= K && B <= M) ||
      (A <= M && C <= K) || (A <= K && C <= M) ||
      (B <= M && C <= K) || (B <= K && C <= M)) {
    print("Коробка пройдёт в дверь")
  } else {
    print("Коробка не пройдёт в дверь")
  }
}

# Вызов функции
check_box_door(12,32,53,12,89)


#1.2.17
x<-5
y<-6
if(x>y){
  z<-sqrt(x*y)
}else{
  z<-log(x+y)
}
print(z)

#1.2.18


check_rectangles <- function(a,b,c,d) {
  
  if ((a <= c && b <= d) || (a <= d && b <= c)) {
    print("Первый прямоугольник может уместиться во втором")
  } else {
    print("Первый прямоугольник не может уместиться во втором")
  }
}
check_rectangles(3,4,2,1)


#1.2.21
f_ot_a<-function(a){
  if(a<=0){
    result<-0
  }else{
   if(a<=1){
     result<-a^2-a
   }
  }
  if(a>1){
    result<-a^2-sin(0.25*a^2)
  }
  print(result)
}
f_ot_a(2)

#1.3.2


rotate_right <- function(arr) {
  
  if (length(arr) == 0) {
    return(arr)
  }
  last_element <- arr[length(arr)]
  arr[2:length(arr)] <- arr[1:(length(arr) - 1)]
  arr[1] <- last_element
  return(arr)
}

# Пример использования функции
original_array <- c(1, 2, 3, 4, 5)
rotated_array <- rotate_right(original_array)
cat("Полученный массив:", rotated_array, "\n")

#1.3.20

#Количество строк
M<-4
str_array<-character(M)
maxchar=-1000
for(i in 1:M){
  str<-as.character(readline(""))
  str_array[i]<-str
  if(maxchar<nchar(str)){
    maxchar=nchar(str)
  }
}
str_array
for(i in 1:M){
  str_array[i]<-paste0(strrep("*", maxchar-nchar(str_array[i])), str_array[i])
}
str_array



#1.3.28
M<-4
str_array<-character(M)
col_space<-integer(M)
for(i in 1:M){
  str<-as.character(readline(""))
  str_array[i]<-str
  col_space[i]<-nchar(str_array[i]) - nchar(gsub(" ", "", str_array[i]))
}
cat("Строки:",str_array,"\n")
cat("Количество пробелов:",col_space,"\n")

#1.3.30
arr<-c(1,2,3,4,5,6,7,8,9,10)
pr_chet<-1
kol_chet<-0
sum_nechet<-0
kol_neschet<-0
for(i in 1:length(arr)){
  if(arr[i]==55555){
    break
  }
  if(i%%2==0){
    print(arr[i])
    pr_chet<-pr_chet*arr[i]
    kol_chet<-kol_chet+1
  }else{
    sum_nechet<-sum_nechet+arr[i]
    kol_neschet<-kol_neschet+1
  }
}
pr_chet
kol_chet
sum_nechet
kol_neschet

#1.3.33

array<-c(1,5,2,123,56,0,1234,67,99999)
sum<-0
for(i in 1:length(array)){
  sum<-sum+array[i]
  if(array[i]==0){
    cat(sum)
  }
  if(array[i]==99999){
    cat("Введено 99999 - работа остановлена")
    break
  }
}

#1.3.35

array<-c(1,-5,2,123,-56,0,1234,67,65432,99999)
pol<-0
otr<-0
schet<-0
for(i in 1:length(array)){
  if(array[i]==65432){
    cat("Работа завершена")
    break
  }
  if(array[i]>=0){
    pol<-pol+1
  }else{
    otr<-otr+1
  }
  schet<-schet+1
}
pol<-pol/schet*100
otr<-otr/schet*100
pol
otr












