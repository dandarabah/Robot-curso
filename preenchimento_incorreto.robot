*** Settings ***
Library        SeleniumLibrary
Library        OperatingSystem
Resource       setup_teardown.robot
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

*** Keywords ***
 Dado que eu deixe os campos vazio
     Input Text        id:form-nome            ${EMPTY}
     Input Text        id:form-cargo           ${EMPTY}
     Input Text        id:form-imagem          ${EMPTY}
     Click Element     class:lista-suspensa    ${EMPTY}
 Quando eu clico no botão "Criar card"
  Click Element    ${CAMPO_CARD}

Então os campos obrigatórios serão exibidos
  Element Should Be Visible   id:form-nome-erro
  Element Should Be Visible   id:form-cargo-erro
  Element Should Be Visible   id:form-times-erro
