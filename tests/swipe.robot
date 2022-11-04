*** Settings ***
Resource            ../resources/base.robot

Test Setup          Open Session
Test Teardown       Close Session


*** Variables ***
${Remove}       id=io.qaninja.android.twp:id/btnRemove


*** Test Cases ***
Deve remover o Capitão América
    Go To Avengers List

    Swipe By Percent    88.88    18.22    47.22    18.22
    Wait Until Element Is Visible    ${Remove}
    Click Element    ${Remove}
