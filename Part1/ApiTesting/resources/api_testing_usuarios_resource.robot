*** Settings ***
Library    RequestsLibrary
Library    String 

*** Keywords ***
Criar um usuário novo 
    ${palavra_aleatoria}    Generate Random String    length=4  chars=[LETRAS]
    ${palavra_aleatoria}    Convert To Lower Case     ${palavra_aleatoria}
    Set Test Variable    ${EMAIL_TESTE}    ${palavra_aleatoria}@emailteste.com
    Log To Console    ${EMAIL_TESTE}

Criar Sessão na ServerRest
    ${headers}    Create Dictionary    accept=application/json    Content-Type=application/json    
    Create Session    alias=ServerRest    url=https://serverest.dev   headers=${headers}
    
Cadastrar o usuário criado na ServerRest
    ${body}    Create Dictionary    
    ...    nome=Isabela Silva    
    ...    email=${EMAIL_TESTE}    
    ...    password=1234    
    ...    administrador=true
    
    Log To Console    ${body}
    Criar Sessão na ServerRest
    
    ${resposta}    POST On Session    
    ...    alias=ServerRest
    ...    url=/usuarios  
    ...    json=${body}
        
    Log To Console    ${resposta.json()}