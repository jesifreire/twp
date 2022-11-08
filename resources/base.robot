*** Settings ***
Library     AppiumLibrary
Library     libs/extend.py
Resource    helpers.robot


*** Keywords ***
Open Session
    Set Appium Timeout    25
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
