*** Settings ***
Resource       ../resource/main.robot
Test Setup     Dado que eu acesse o Organo
Test Teardown  Fechar o navegador

*** Variables ***
${CAMPO_NOME}      id:form-nome
${CAMPO_CARGO}     id:form-cargo
${CAMPO_IMAGEM}    id:form-imagem
${CAMPO_TIME}      class:lista-suspensa
${CAMPO_CARD}      id:form-botao 

*** Test Cases ***
Verificar se ao clicar no botão "Criar card", sem preencher os campos do formulário exibe os campos obrigatórios
    Dado que eu deixe os campos vazio
    Quando eu clico no botão "Criar card"
    Então os campos obrigatórios serão exibidos



