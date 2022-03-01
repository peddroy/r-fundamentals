# Manipulação de objetos e classes de elementos - R Dicas 2
# https://www.youtube.com/watch?v=R9wK-8GSmI4

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