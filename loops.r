# Manipulação de objetos e classes de elementos - R Dicas 2
# https://www.youtube.com/watch?v=R9wK-8GSmI4

#LOOP

# for
#nest for
#break
#next
#while
#repeat

#FOR

vetor <- c(1:10)

for (i in vetor){
  new <- i
  print(c('oii', i))
}
View(new)


for (i in 'teste'){
  print(c('oi', i))
}

set.seed(123)

vector1 <- rnorm(10)

resultquad <- NA

for(i in 1:10){
  resultquad[i]<-vector1[i]*vector1[i]
}
resultquad

mat1 <- matrix(ncol = 10, nrow = 10)
View(mat1)


for (i in 1:dim(mat1)[1]){
  for(j in 1:dim(mat1)[2]){
    mat1[i,j] <- i * j
  }
}
mat1

dim(mat1)[1]

nomes <- c('Carlito', 'Joaquim', 'Marco')

for(i in nomes){
  print(i)
}

for(i in nomes){
  for(j in i){
    print(c(j, 'oi'))
  }
}

seq3 <- 1:30

for(i in seq3){
  if(i %% 2 == 0){
    print(c(i,' é par'))
  } else{
    print(c(i, ' é impar'))
  }
}


#WHILE


readinteger <- function(){
  n <- readline(prompt = 'Please enter your answer: ')
}

response <- as.integer(readinteger())

while (response != 42){
  print('Sorry, the answer to whatever question must be 42')
  response <- as.integer(readinteger())
}

#REPEAT

repeat {
  response <- as.integer(readinteger());
  if (response == 42){
    print('Well done!');
    break
  } else {
    print('Sorry, the answer to whatever question must be 42');
  }
}

