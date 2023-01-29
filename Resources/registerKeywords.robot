*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SKIP_SING_IN}    id=btn2
${ABA_REGISTER}    xpath=//*[@class="nav navbar-nav"]//a[@href="Register.html"]

*** Keywords ***
Entra na tela de registro
    Log To Console    -> Entrando na tela de registro...\n

    SeleniumLibrary.Wait Until Page Contains Element    ${SKIP_SING_IN}    5
    SeleniumLibrary.Click Element                       ${SKIP_SING_IN}
    SeleniumLibrary.Wait Until Page Contains Element    ${ABA_REGISTER}    5

Digita os campos Full Name
    Log To Console    -> Digitando os campos Full Name...\n


Digita o campo Email address
    Log To Console    -> Digitando o campo Email address...\n
Digita o campo Phone
    Log To Console    -> Digitando o campo Phone...\n
Seleciona uma opcao em Gender
    Log To Console    -> Selecionando uma opção em Gender...\n
Seleciona uma opcao em Country
    Log To Console    -> Selecionando uma opção em Country...\n
Submete o registro
    Log To Console    -> Submetendo o registro...\n