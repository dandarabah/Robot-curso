*** Settings ***
Library    recursion_lib.py
Resource         ../resource/main.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador


*** Test Cases ***
Set Recursion Limit
    ${limit}=    Set Recursion Limit    2000
    Log    New recursion limit is ${limit}

Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time esperado
     Dado que eu preencha os campos do formulário
     E clique no botão criar card
     Então identificar o card no time esperado

Verificar se é possível criar mais de um card se preenchermos os campos 
     Dado que eu preencha os campos do formulário
     E clique no botão Criar Card
     Então identificar 3 cards no time esperado

Verificar se é possível criar um card para cada time se preenchermos os campos corretamente
    Dado que eu preencha os campos do formulário
    Então criar e identificar 1 card em cada time disponível

