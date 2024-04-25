library(DOSE)

# Defina a lista de doenças
doencas <- c('Erro ao acessar a API', 'Erro ao acessar a API', 'Erro ao acessar a API', 'Erro ao acessar a API', 'Erro ao acessar a API', 'Erro ao acessar a API', 'Erro ao acessar a API', 'Erro ao acessar a API', 'Erro ao acessar a API', 'Erro ao acessar a API', 'Erro ao acessar a API')

# Defina os nomes de linha e coluna para a matriz de similaridades
rownames(similaridades) <- doencas
colnames(similaridades) <- doencas

# Calcule as similaridades usando a métrica de Wang
similaridades <- doSim(doencas, doencas, measure = 'Wang')

# Exiba a matriz de similaridades no console
print(similaridades)

# Salve a matriz de similaridades em um arquivo CSV
write.csv(similaridades, "matriz_similaridades.csv", row.names=TRUE)
