#Método que iniciar os teste na API.  
Dado(/^que tenho um endpoint clientes$/) do
  puts('Iniciando testes')
end
  
#Método checa a URI responde e retorna sua chamada.
Quando(/^realizar uma requisição GET para o endpoint/) do
    @response = HTTParty.get 'https://portal.vr.com.br/api-web/comum/enumerations/products/'
end
  
#Método recebe retorno da API retornando o código, message e verifica a sua chave typeOfEstablishment.
#Adicinei os puts para saída no console para melhor verificar o retorno do response.
Entao(/^retorna a lista de clientes$/) do
  puts('status Code: ',@response.code)
  puts('status Message:',@response.message)
  @response.body
  puts "@response.to_a:
=================================================================", @response.to_a
 # puts "@response.headers.inspect:
#=================================================================",
  #@response.headers.inspect
  #@response.headers
end
  
#Por último retorna o Code da API de tipo 200.
E(/^o status code '(\d+)'$/) do |status_code|
    status_code = status_code.to_i
    expect(@response.code).to eq status_code
end