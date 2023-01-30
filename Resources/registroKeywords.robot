*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BOTAO_SIGNUP_LOGIN}      xpath=//a[contains(.,'Signup / Login')] 
${TITULO_NOVO_REGISTRO}    xpath=//h2[contains(.,'New User Signup!')] 
${CAMPO_NOME}              xpath=//input[contains(@type,'text')] 
${CAMPO_EMAIL}             xpath=//input[contains(@data-qa,'signup-email')] 
${BOTAO_REGISTRAR}         xpath=//button[@type='submit'][contains(.,'Signup')] 
${TITULO_ENTRAR_DADOS}     xpath=//b[contains(.,'Enter Account Information')] 
${CAMPO_TITULO}            id=id_gender1
${CAMPO_SENHA}             id=password
${DIA_NASCIMENTO}          xpath=//option[@value='30'][contains(.,'30')] 
${MES_NASCIMENTO}          xpath=//option[@value='3'][contains(.,'March')] 
${ANO_NASCIMENTO}          xpath=//option[@value='1990'][contains(.,'1990')] 
${NOME_ENDERECO}           id=first_name
${SOBRENOME_ENDERECO}      id=last_name
${CAMPO_COMPANHIA}         id=company
${CAMPO_ENDERECO_1}        id=address1
${CAMPO_ENDERECO_2}        id=id=address2
${CAMPO_PAIS}              xpath=//option[@value='Australia'][contains(.,'Australia')] 
${CAMPO_ESTADO}            id=state
${CAMPO_CIDADE}            id=city
${CAMPO_CEP}               id=zipcode
${CAMPO_CELULAR}           id=mobile_number
${CAMPO_NEWSLETTER}        id=newsletter
${CAMPO_OFERTAS}           id=optin
${BOTAO_CRIAR_CONTA}       xpath=//button[@type='submit'][contains(.,'Create Account')] 


*** Keywords ***
Clique no botão 'Signup / Login'
    Log To Console    -> Clicando no botão para registrar...\n
    
    SeleniumLibrary.Page Should Contain Element    ${BOTAO_SIGNUP_LOGIN}
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Click Element                  ${BOTAO_SIGNUP_LOGIN}        

Verifique 'Inscrição de novo usuário!' é visível
    Log To Console    -> Verifincando título de novo registro...\n

    SeleniumLibrary.Page Should Contain Element    ${TITULO_NOVO_REGISTRO}
    SeleniumLibrary.Capture Page Screenshot

Digite o nome e endereço de e-mail
    Log To Console    -> Digitando nome e e-mail...\n

    SeleniumLibrary.Input Text    ${CAMPO_NOME}     Nome01
    SeleniumLibrary.Input Text    ${CAMPO_EMAIL}    nome01@gmail.com
    SeleniumLibrary.Capture Page Screenshot

Clique no botão 'Inscrever-se'    
    Log To Console    -> Clicando no botão registrar...\n

    SeleniumLibrary.Click Element    ${BOTAO_REGISTRAR}

Verifique se 'INSERIR INFORMAÇÕES DA CONTA' está visível
    Log To Console    -> Verifincando título de inserir informações...\n

    SeleniumLibrary.Page Should Contain Element    ${TITULO_ENTRAR_DADOS}
    SeleniumLibrary.Capture Page Screenshot

Preencha todos os dados
    Log To Console    -> Preenchendo todos os dados...\n

    SeleniumLibrary.Click Element     ${CAMPO_TITULO}
    SeleniumLibrary.Input Password    ${CAMPO_SENHA}            123456789
    SeleniumLibrary.Click Element     ${DIA_NASCIMENTO}
    SeleniumLibrary.Click Element     ${MES_NASCIMENTO}         
    SeleniumLibrary.Click Element     ${ANO_NASCIMENTO}         
    SeleniumLibrary.Input Text        ${NOME_ENDERECO}          Nome Endereço01
    SeleniumLibrary.Input Text        ${SOBRENOME_ENDERECO}     Sobrenome Endereço01
    SeleniumLibrary.Input Text        ${CAMPO_COMPANHIA}        Companhia01
    SeleniumLibrary.Input Text        ${CAMPO_ENDERECO_1}       Endereço01
    SeleniumLibrary.Input Text        ${CAMPO_ENDERECO_2}       Endereço02
    SeleniumLibrary.Click Element     ${CAMPO_PAIS}             
    SeleniumLibrary.Input Text        ${CAMPO_ESTADO}           Estado01
    SeleniumLibrary.Input Text        ${CAMPO_CIDADE}           Cidade01
    SeleniumLibrary.Input Text        ${CAMPO_CEP}              123456789
    SeleniumLibrary.Input Text        ${CAMPO_CELULAR}          123456789
    SeleniumLibrary.Capture Page Screenshot  

Marque a caixa de seleção 'Assine nossa newsletter!'
    Log To Console    -> Macando opção para receber newsletter...\n
    
    SeleniumLibrary.Click Element    ${CAMPO_NEWSLETTER}
    SeleniumLibrary.Capture Page Screenshot

Marque a caixa de seleção 'Receba ofertas especiais de nossos parceiros!'
    Log To Console    -> Macando opção para receber ofertas...\n
    
    SeleniumLibrary.Click Element    ${CAMPO_OFERTAS}
    SeleniumLibrary.Capture Page Screenshot

Clique em 'botão Criar conta'
    Log To Console    -> Clicando no botão para criar conta...\n

    SeleniumLibrary.Click Element    ${BOTAO_CRIAR_CONTA}

Verifique se 'CONTA CRIADA!' é visível
    Log To Console    -> Visualizando mensagem de conta criada...\n

    #SeleniumLibrary.Page Should Contain Element    ${}