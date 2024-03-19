*** Settings ***
Documentation    Exercicio: Cria uma nova keyword, onde ela nos produzirá um e-mail customizado com as seguintes regras:
...              Essa keyword deve receber por argumento o nome e sobrenome de uma pessoa
...              Essa keyword deve gerar uma palavra aleatória que será usada na composição do e-mail (DICA: olhe na documentação da Library String ou Library Faker para achar uma keyword que gere essa palavra aleatória)
...              Junte o nome + sobrenome + palavra aleatória + @testerobot.com e retorne esse e-mail montado ao final da keyword. Exemplo: MayFernandesWedd34Dd@testerobot.com
Library    String

*** Variable ***
&{PESSOA}       nome=Isabela    sobrenome=Silva

*** Test Cases ***
Criando um email 
    ${EMAIL}        Criando e-mail customizado     ${PESSOA.nome}    ${PESSOA.sobrenome}
    Log To Console    ${EMAIL}
    
*** Keywords ***
Criando e-mail customizado
    [Arguments]    ${NOME}    ${SOBRENOME}
    ${PALAVRA_ALEATORIA}       Generate Random String
    ${EMAIL_CRIADO}            Set Variable      ${NOME}${SOBRENOME}${PALAVRA_ALEATORIA}@email.com
    [Return]                   ${EMAIL_CRIADO}