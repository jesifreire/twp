*** Settings ***
Library    hello.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${resultado}=         HelloRobot    Jesiane
    Should Be Equal        ${resultado}        Olá,Jesiane.