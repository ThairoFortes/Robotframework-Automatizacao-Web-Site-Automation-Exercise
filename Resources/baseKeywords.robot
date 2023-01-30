*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                https://automationexercise.com/
${LOGO}               //img[contains(@alt,'Website for automation practice')] 
*** Keywords ***
Abrir navegador
    Log To Console    \n-> Abrindo navegador...\n
    
    Open Browser               ${URL}    chrome
    Maximize Browser Window    

    SeleniumLibrary.Wait Until Page Contains Element    ${LOGO}    5
    
Fechar navegador    
    Log To Console    -> Fechando navegador...\n
    Close Browser    
