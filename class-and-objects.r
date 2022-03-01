# Manipulação de objetos e classes de elementos - R Dicas 2
# https://www.youtube.com/watch?v=R9wK-8GSmI4

# 1. Vetores
a <- 1
a <- c(1, 2, 3, 4)

b <- c(10, 20, 30, 40)

# Indexação de valoress/elementos
# Posição dos elementos no objeto

a[1]
b[2]
resultado <- a[1]+b[2]
resultado

resultado[2] <- b[2] / b[1]
resultado

a+b

c <- c(50, 60)

a*c

10*NA
1+NA


# 2. Data Frames

tabela_1 <-data.frame(a, b)
tabela_1

tabela_1[1,]
tabela_1[2,2]

tabela_1[,'b']



tabela_1$resultado<-resultado
tabela_1

tabela_1[,'resultado2']<-resultado
tabela_1

tabela_1[,c('a', 'resultado2')]


# Matrizes

# Diferença entre Data Frames e Matrizes
# Dataframe pode ser heterogenea (nome e valores)

tabela_1[,'variavel_a']<-'a'
tabela_1

str(tabela_1)

matriz_a <- matrix(1,nrow = 3, ncol = 4)
matriz_a
str(matriz_a)
matriz_a[,'a']<-'a' # erro  

#Pendente como adicionar colunas em matrizes

matriz_b <- matrix(c(1, 'a'), nrow = 3, ncol = 4)
matriz_b #matriz de caracteres



# Listas
# Permitem armazenar multiplas classes e tipos de elementos dentro de um mesmo objeto

lista_a <- list(tabela_1, matriz_a)
lista_a
str(lista_a)

lista_a[1]
lista_a[[1]]
lista_a[[1]][,2:3]


# Arrray
# Similiar a lista. 

vector1 <- c(5, 9, 3)
vector2 <- c(10, 11, 12, 13, 14, 15)

column.names <- c('COL1', 'COL2', 'COL3')
rown.names <- c('row1', 'row2', 'row3')
matrix.names <- c('Matriz1', 'Matriz2')

result <- array(c(vector1, vector2), dim = c(3, 3, 2), dimnames = list(row.names, column.names, matrix.names))



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



# Alternativas para loops no R (Como tornar seus códigos mais rápidos e eficientes) - R Dicas 5
# https://www.youtube.com/watch?v=eTitdvwyqSQ

# VETORIZAÇÃO



m = 10
n = 10

input <- replicate(m, rnorm(n))
str(input)

# converter matriz em data frame

input_dataframe <- data.frame(input)
str(input_dataframe)

#atualizar cada valor na data frame pela multiplicação quadrada do proprio numero

for (i in 1:m){
  for (j in 1:n){
    input_dataframe[i,j] <- input_dataframe[i,j]*sqrt(input_dataframe[i,j])
  }
}

# Utilizando vetorização

input_dataframe2 <- data.frame(input)
str(input_dataframe2)
input_dataframe2

input_dataframe2<-input_dataframe2*sqrt(input_dataframe2)

input_dataframe[1:3,1:3]
input_dataframe2[1:3,1:3]

a <- c(12, 13, 14)
b <- c(10, 10, 11)

a + b


# calculando tempo de execução

system.time(
for (i in 1:m){
  for (j in 1:n){
    input_dataframe[i,j] <- input_dataframe[i,j]*sqrt(input_dataframe[i,j])
  }
}
)

system.time(
input_dataframe2<-input_dataframe2*sqrt(input_dataframe2)
)


#Familia apply
#utilizar dataframe ou matriz e executar função para linhas e colunas

# apply() - lista como input - resultado como lista
# lapply(list, function) - 
# sapply(list, function) - lista como input - retorna elementos da lista como vetor

data(mtcars)

apply(mtcars, 1, sum) #retorna a soma de cada linha
apply(mtcars, 2, sum) #retorna a soma de cada coluna

list_inp <- list(a=c(1, 2, 3), b=c(12, 13, 14), c=c(22, 24, 26))
lapply(list_inp, sum)
str(lapply(list_inp, sum))

sapply(list_inp, sum)
str(sapply(list_inp, sum))

# colSums()
colSums(mtcars)
colMeans(mtcars)

# rowSums()
rowSums(mtcars)
rowMeans(mtcars)

# aggregate()

mtcars

aggregate(mtcars$mpg, by=list(mtcars$cyl), FUN=mean)
aggregate(mtcars$mpg, by=list(mtcars$cyl), FUN=sd)


lapply(list_inp, sum)