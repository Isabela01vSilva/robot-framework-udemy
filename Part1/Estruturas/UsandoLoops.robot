*** Settings ***
Documentation   Vamos aprender a fazer LOOPS usando o Robot Framework!!

*** Variables ***
### Indíce da lista          0      1        2       3       4       5
@{MINHA_LISTA_DE_FRUTAS}   maça  abacaxi  banana  morango  laranja  uva

*** Test Case ***
Teste de REPEAT KEYWORD
    [Documentation]  Chama uma mesma keyword várias vezes
    Usando Repeat keyword

Teste de FOR do tipo IN RANGE
    [Documentation]  Faz um loop dentro de um intervalo que você passar
    Usando FOR IN RANGE

Teste de FOR do tipo IN
    [Documentation]  Faz um loop percorrendo a lista que você passar
    Usando FOR IN

Teste de FOR do tipo IN ENUMERATE
    [Documentation]  Faz um loop percorrendo a lista que você passar e percorre o indíce da lista
    Usando FOR IN ENUMERATE

Teste de Sair do FOR
    [Documentation]  Você controla quando o FOR deve se encerrar antes de terminar todos os LOOPS
    Usando FOR IN com EXIT FOR LOOP IF

*** Keywords ***
Usando Repeat keyword
    Log To Console  ${\n}
    Repeat Keyword    8x    Log To Console    Minha repetição da keyword!!!

Usando FOR IN RANGE
    Log To Console  ${\n}
    FOR  ${CONTADOR}   IN RANGE  0   10   2
        Log To Console    Minha posição agora é: ${CONTADOR}
        Log   Minha posição agora é: ${CONTADOR}
    END

    FOR  ${CONTADOR}   IN RANGE  10   15   
        Log To Console    Minha posição agora é: ${CONTADOR}
        Log   Minha posição agora é: ${CONTADOR}
    END