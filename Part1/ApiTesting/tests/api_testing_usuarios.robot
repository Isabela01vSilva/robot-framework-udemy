*** Settings ***
Resource  ../resources/api_testing_usuarios_resource.robot

*** Variables ***


*** Test Cases ***
Cenário 01: Cadastrar um novo usuário com sucesso na ServerRest
    Criar um usuário novo 
    Cadastrar o usuário criado na ServerRest    email=${EMAIL_TESTE}   status_code_desejado=201
    Conferir se o usuário foi cadastrado corretamente 

Cenário 02: Cadastrar um usuário já existente
    Criar um usuário novo
    Cadastrar o usuário criado na ServerRest    email=${EMAIL_TESTE}    status_code_desejado=201
    Vou repetir o cadastro do usuário
    Verificar se a API não permitiu o cadastro repetido