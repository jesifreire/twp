*** Settings ***
Resource            ../resources/base.robot

Test Setup          Open Session
Test Teardown       Close Session


*** Variables ***
${SPINNER}          id=io.qaninja.android.twp:id/spinnerJob
${LIST_OPTIONS}     class=android.widget.ListView


*** Test Cases ***
Deve selecionar o perfil QA.
    Go To SignUp Form
    Choice Job    QA

Deve selecionar o perfil Desenvolvedor
    Go To SignUp Form
    Choice Job    Desenvolvedor

Deve selecionar o perfil DevOps
    Go To SignUp Form
    Choice Job    DevOps

Deve selecionar o perfil UX
    Go To SignUp Form
    Choice Job    UX


*** Keywords ***
Choice Job
    [Arguments]    ${target}

    Click Element    ${SPINNER}
    Wait Until Element Is Visible    ${LIST_OPTIONS}
    Click Text    ${target}
