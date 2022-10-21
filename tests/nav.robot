*** Settings ***
Resource          ../resources/base.robot
#Executa a keyword antes de cada teste case[Chamados de ganchos de testes]
Test Setup        Open Session
#Executa a keyword depois de cada teste case
Test Teardown     Close Session

*** Variables ***
${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle

*** Test Cases ***
Deve acessar a tela Dialogs
    Open Nav
    Click Text    DIALOGS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be    ${TOOLBAR_TITLE}    DIALOGS

*** Test Cases ***
Deve acessar a tela Forms
    Open Nav
    Click Text    FORMS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be    ${TOOLBAR_TITLE}    FORMS

Deve acessar a tela de Avengers
    Open Nav
    Click Text    AVENGERS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be    ${TOOLBAR_TITLE}    AVENGERS
