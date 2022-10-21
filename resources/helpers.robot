*** Settings ***
Documentation     Aqui teremos as keywords helpers

*** Variables ***
${START}          COMEÇAR
${HAMBURGUER}     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}       id=io.qaninja.android.twp:id/navView

*** Keywords ***
Get Started
    Wait Until Page Contains    ${START}
    Click Text    ${START}

Open Nav
    Wait Until Element Is Visible    ${HAMBURGUER}
    Click Element    ${HAMBURGUER}
    Wait Until Element Is Visible    ${NAV_VIEW}
