*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                https://demo.automationtesting.in/Index.html 
${BOTOES_REGISTER}    id=abcd

*** Keywords ***
Abrir navegador
    Log To Console    \n-> Abrindo navegador...\n
    
    Open Browser               ${URL}    chrome
    Maximize Browser Window    
    SeleniumLibrary.Wait Until Page Contains Element    ${BOTOES_REGISTER}    5
    
Fechar navegador    
    Log To Console    -> Fechando navegador...\n
    Close Browser    
