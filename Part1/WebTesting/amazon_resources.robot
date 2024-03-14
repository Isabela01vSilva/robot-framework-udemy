*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                         https://www.amazon.com.br
${MENU_ELETRONICOS}            //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}          //span[@class='a-size-base a-color-base apb-browse-refinements-indent-1 a-text-bold'][contains(.,'Eletrônicos e Tecnologia')]
${TEXTO_HEADER_ELETRONICOS}    Eletrônicos e Tecnologia 

*** Keywords ***
Abrir o navegador
    Open Browser                browser=edge
    Maximize Browser Window     

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar o home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text=${TEXTO_HEADER_ELETRONICOS} 
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be     title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//a[@aria-label='${NOME_CATEGORIA}']

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${PRODUTO}')])
    