#Aqui importei e configurei o openssl para pode acessar a API
#se não adicionar não irá conseguir chamar a API.
require 'httparty'
require 'rspec'
require 'pry'
require 'cucumber'
require 'openssl'


OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
 
 
 



 
 