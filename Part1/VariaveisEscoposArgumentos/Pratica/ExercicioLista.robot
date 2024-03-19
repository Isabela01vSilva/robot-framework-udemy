*** Settings ***
Documentation    Exercicio de Lista

*** Variable ***
@{FRUTAS}    manga   caqui   melão   mamão   abacate

*** Test Cases ***
Imprimindo lista
    Imprimindo lista no console
    Imprimindo lista no console 2

*** Keywords ***
Imprimindo lista no console
    Log to Console    '@{FRUTAS}'

Imprimindo lista no console 2
    Log To Console    Fruta 01: ${FRUTAS[0]}
    Log To Console    Fruta 02: ${FRUTAS[1]}
    Log To Console    Fruta 03: ${FRUTAS[2]}
    Log To Console    Fruta 04: ${FRUTAS[3]}
    Log To Console    Fruta 05: ${FRUTAS[4]}