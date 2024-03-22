*** Settings ***
Library    RequestsLibrary
Library    String 
Library    Collections

*** Keywords ***
Criar um usuário novo 
    ${palavra_aleatoria}    Generate Random String    length=4  chars=[LETRAS]
    ${palavra_aleatoria}    Convert To Lower Case     ${palavra_aleatoria}
    Set Test Variable    ${EMAIL_TESTE}    ${palavra_aleatoria}@emailteste.com
    Log To Console    ${EMAIL_TESTE}

Criar Sessão na ServeRest
    ${headers}    Create Dictionary    accept=application/json    Content-Type=application/json    
    Create Session    alias=ServeRest    url=https://serverest.dev  headers=${headers}
    
Cadastrar o usuário criado na ServerRest
    ${body}    Create Dictionary    
    ...    nome=Isabela Silva    
    ...    email=${EMAIL_TESTE}    
    ...    password=1234    
    ...    administrador=true
    Log To Console    ${body}

    Criar Sessão na ServeRest
    ${resposta}    POST On Session    
    ...    alias=ServeRest
    ...    url=/usuarios
    ...    json=${body}
        
    Log To Console    ${resposta.json()}
    Set Test Variable    ${RESPOSTAS}    ${resposta.json()}

Conferir se o usuário foi cadastrado corretamente 
    Log To Console    ${RESPOSTAS}
    Dictionary Should Contain Item    ${RESPOSTAS}    message    Cadastro realizado com sucesso
    Dictionary Should Contain Key     ${RESPOSTAS}    _id