*** Settings ***
Resource          ../resources/base.robot
Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Deve logar com sucesso
    [Tags]    Success
    Go To Login Forms
    Input Text    id=io.qaninja.android.twp:id/etEmail    eu@papito.io
    Input Text    id=io.qaninja.android.twp:id/etPassword    qaninja
    Click Element    id=io.qaninja.android.twp:id/btnSubmit
    Wait Until Page Contains    Show! Suas credenciais são validas.

Deve dar erro no login
    [Tags]    Error
    Go To Login Forms
    Input Text    id=io.qaninja.android.twp:id/etEmail    eu@papito.io
    Input Text    id=io.qaninja.android.twp:id/etPassword    Qaninja
    Click Element    id=io.qaninja.android.twp:id/btnSubmit
    Wait Until Page Contains    Senha inválida!
