**Httparty_Ruby_Rspec_API:**

**Dúvidas:**
> Links úteis
***https://docs.qameta.io/allure-report/#_ruby***
https://www.rubydoc.info/github/jnunemaker/httparty

***Abra o terminal e execute o comando abaixo:***

bundle install      

***Instalação da Gem do httparty:***

gem install httparty

***Executando os testes:***

**Abra uma nova aba e digite o comando abaixo:**

cucumber 

ou 

cucumber get.feature

**Referências:**

httparty

***Status da compilação:***

***Torna o http divertido novamente! Não há festa como uma httparty, porque uma httparty não para.
Instalar:***

gem install httparty

***Requisitos:***

    Ruby 2.3.0 ou superior
    multi_xml
    Você gosta de festa!

***Exemplos***

# Use the class methods to get down to business quickly
response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

puts response.body, response.code, response.message, response.headers.inspect

# Or wrap things up in your own class
class StackExchange
  include HTTParty
  base_uri 'api.stackexchange.com'

  def initialize(service, page)
    @options = { query: { site: service, page: page } }
  end

  def questions
    self.class.get("/2.2/questions", @options)
  end

  def users
    self.class.get("/2.2/users", @options)
  end
end

stack_exchange = StackExchange.new("stackoverflow", 1)
puts stack_exchange.questions
puts stack_exchange.users

Veja o diretório de exemplos para ainda mais brindes.
Interface da Linha de comando

httparty também inclui o executável httpartyque pode ser usado para consultar serviços da web e examinar a saída resultante. Por padrão, ele produzirá a resposta como um objeto Ruby bem impresso (útil para grokking a estrutura de saída). Isso também pode ser substituído por XML ou JSON formatado de saída. Execute httparty --helppara todas as opções. Abaixo está um exemplo de como é fácil.

httparty "https://api.stackexchange.com/2.2/questions?site=stackoverflow"

**Contribuindo**

    Fork o projeto.
    Correbundle
    Correbundle exec rake
    Faça sua adição de recurso ou correção de bug.
    Adicione testes para isso. Isso é importante para não quebrá-lo em uma versão futura sem querer.
    Corra bundle exec rake(Não, REALMENTE :))
    Comprometa-se, não mexa com rakefile, versão ou histórico. (se você quiser ter sua própria versão, tudo bem, mas coloque a versão em um commit em outro branch para que eu possa ignorar quando eu puxar)
    Envie-me um pull request. Pontos de bônus para ramificações de tópicos.
 Instalação

**Adicione esta linha ao Gemfile do seu aplicativo:**

gem 'allure-cucumber'

E depois execute:

$ bundle

Ou instale você mesmo como:

$ gem install allure-cucumber
**Configuração**

Por padrão, os arquivos XML do Allure são armazenados em gen/allure-results. Para alterar isso, adicione o seguinte no features/support/env.rbarquivo:

AllureCucumber.configure do |c|
   c.output_dir = "/output/dir"
end

Por padrão, os arquivos XML do Allure de execuções anteriores são excluídos no início de uma nova execução. Isso pode ser desabilitado por:

AllureCucumber.configure do |c|
  c.clean_dir  = false
end

Por padrão, o allure-cucumber analisará suas tags de pepino procurando por ganchos de Gerenciamento de Testes, Gerenciamento de Problemas e Gravidade. Esses ganchos serão exibidos no relatório allure gerado (veja allure-core para mais informações).

    DEFAULT_TMS_PREFIX      = '@TMS:'
    DEFAULT_ISSUE_PREFIX    = '@ISSUE:'
    DEFAULT_SEVERITY_PREFIX = '@SEVERITY:'

**Exemplo:**

  @SEVERITY:trivial @ISSUE:YZZ-100 @TMS:9901
  Scenario: Leave First Name Blank
    When I register an account without a first name
    Then exactly (1) [validation_error] should be visible

**Você pode configurar o que o allure-cucumber procura fazendo as seguintes alterações**

AllureCucumber.configure do |c|
  c.clean_dir  = false
  c.tms_prefix      = '@HIPTEST--'
  c.issue_prefix    = '@JIRA++'
  c.severity_prefix = '@URGENCY:'
end

**Exemplo:**

  @URGENCY:critical @JIRA++YZZ-100 @HIPTEST--9901
  Scenario: Leave First Name Blank
    When I register an account without a first name
    Then exactly (1) [validation_error] should be visible

** Uso**

Coloque o seguinte em seu features/support/env.rbarquivo:

require 'allure-cucumber'

Use --format AllureCucumber::Formatter --out where/you-want-resultsenquanto estiver executando o pepino ou adicione-o aocucumber.yml

Você também pode anexar capturas de tela , logs ou dados de teste às etapas .

 #file: features/support/env.rb
 include AllureCucumber::DSL
 attach_file(title, file)

**Como gerar relatório**

Este adaptador gera apenas arquivos XML contendo informações sobre testes. Veja a seção wiki sobre como gerar relatório.
** RSspec**

Adaptador para usar o framework Allure junto com o RSpec. Veja um projeto de exemplo para fazer um tour rápido.
**O que há de novo**

Consulte a aba de lançamentos .
** Configurar**

Adicione a dependência ao seu Gemfile. Escolha a versão com cuidado:

    0.5.x - para RSpec2.

    ⇐ 0.6.7 - para RSpec < 3.2.

    >= 0,6,9 - para RSpec >= 3,2.

 gem 'allure-rspec'

E, em seguida, inclua-o em seu spec_helper.rb:

    RSpec.configure do |c|
      c.include AllureRSpec::Adaptor
    end


**GitHub:**
Acesso o github do weverson07/httParty_Ruby_Rspec_AP
