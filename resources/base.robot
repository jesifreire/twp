*** Settings ***
Library           AppiumLibrary

*** Variables ***
${START}          COMEÇAR
${HAMBURGUER}     xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}       id=io.qaninja.android.twp:id/navView

*** Keywords ***
Open Session
    Set Appium Timeout    15
    Open Application    http://localhost:4723/wd/hub
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Emulator
    ...    deviceName=LMX410CERWKROBLBJ7
    ...    app=${EXECDIR}/app/twp.apk
    Get Started

Close Session
    Close Application
#Encapsulando as Keywords

Get Started
    Wait Until Page Contains    ${START}
    Click Text    ${START}

Open Nav
    Wait Until Element Is Visible    ${HAMBURGUER}
    Click Element    ${HAMBURGUER}
    Wait Until Element Is Visible    ${NAV_VIEW}
