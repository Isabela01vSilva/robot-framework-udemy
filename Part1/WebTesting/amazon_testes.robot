*** Settings ***
Documentation        Essa suite testa o site da Amazon.com.br 
Resource             amazon_resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador 

*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu eletronicos do site da Amazon.com.br
    ...                e verifica a categoria computadores e Informatica
    [Tags]             menus categorias    
    Acessar o home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"

Caso de teste 02 - Pesquisa de produto 
    [Documentation]        Esse teste verifica a busca de um produto 
    [Tags]                 busca_produtos lista_busca
    Acessar o home page do site Amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Xbox Series S"