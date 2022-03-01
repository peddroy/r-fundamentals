# Manipulação de objetos e classes de elementos - R Dicas 2
# https://www.youtube.com/watch?v=R9wK-8GSmI4

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

