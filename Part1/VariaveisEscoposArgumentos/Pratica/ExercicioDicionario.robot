*** Settings ***
Documentation    Exercicio: crie uma variável do tipo DICIONÁRIO na seção de variáveis globais que contenha nela os meses do ano e, para cada mês, informe o número de dias desse mês
*** Variables ***
&{MESES}       january=30  february=28  march=31  april=30  may=31  june=30  july=31  august=30  september=31  october=30  november=31  december=30

*** Test Cases ***
Imprimir variavel tipo Documentation
    Imprimir cada mês e dia 
    Imprimir cada mês e dia organizado

*** Keywords ***
Imprimir cada mês e dia
    Log To Console    message= ${MESES}

Imprimir cada mês e dia organizado
    Log To Console    Mês: Janeiro Tem: ${MESES.january} dias
    Log To Console    Mês: Fevereiro Tem: ${MESES.february} dias
    Log To Console    Mês: Março Tem: ${MESES.march} dias
    Log To Console    Mês: Abril Tem: ${MESES.april} dias
    Log To Console    Mês: Maio Tem: ${MESES.may} dias
    Log To Console    Mês: Junho Tem: ${MESES.june} dias
    Log To Console    Mês: Julho Tem: ${MESES.july} dias
    Log To Console    Mês: Agosto Tem: ${MESES.august} dias
    Log To Console    Mês: Setembro Tem: ${MESES.september} dias
    Log To Console    Mês: Outubro Tem: ${MESES.october} dias
    Log To Console    Mês: Novembro Tem: ${MESES.november} dias
    Log To Console    Mês: Dezembro Tem: ${MESES.december} dias