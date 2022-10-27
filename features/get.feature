#Aqui coloque o Ghekin utilizado no criar os Steps de forma simples e 
#entendimento de qualquer pessoa na utilização do Ghekin.
#O Ghekin aqui foi utilizado com verbos em português, mas, nada impede de ser utilizar os 
#verbos em inglês, Given, When, And e Then.
#language: pt

Funcionalidade: Utilizando o verbo GET

Cenario: Realizar uma requisição GET com sucesso

  Dado que tenho um endpoint clientes
  Quando realizar uma requisição GET para o endpoint
  Entao retorna a lista de clientes
  E o status code '200'