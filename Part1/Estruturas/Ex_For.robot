*** Settings ***
Documentation    Exercicio: 
...              1. Criar uma Keyword que percorra uma lista for
...              2. Dentro do FOR, faça um bloco IF que imprima no Log a frase "Eu sou o número 5!" e "Eu sou o número 10!", ou seja, só pode imprimir quando o número atual da lista for 5 ou 10.
...              3. Use o ELSE para imprimir no Log a frase "Eu não sou o número 5 e nem o 10!"
    
*** Variables ***
@{NUMEROS}    4    5    67    18    29    55    10

*** Test Cases ***
Percorrendo lista
    Imprimindo lista quando for o numero 5 ou 10 
    Solução da instrutora

*** Keywords ***
Imprimindo lista quando for o numero 5 ou 10
    Log To Console    ${\n}

    FOR    ${numero}   IN  @{NUMEROS}
        IF  ${numero} == 5 or ${numero} == 10
            Log To Console    Eu sou o numero é: ${numero}!
        ELSE 
            Log To Console    Eu não sou o número 5 ou/e 10
        END
    END
    
Solução da instrutora
    Log To Console  ${\n}
      FOR    ${ex_numero}    IN   @{NUMEROS}
        IF  ${ex_numero} in (5, 10)
          Log To Console    Eu sou o número ${ex_numero}
        ELSE
          Log To Console    Eu não sou o número 5 e nem o 10
      END              
    END