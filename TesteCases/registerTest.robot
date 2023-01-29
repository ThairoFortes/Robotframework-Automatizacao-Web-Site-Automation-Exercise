*** Settings ***
Documentation    Esta suíte valida os registros no site

Resource         ../Resources/baseKeywords.robot    
Resource         ../Resources/registerKeywords.robot

Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Registro no site
    [Documentation]    Este cenário realiza o registro no site preenchendo os campos obrigatórios
    [Tags]             register_campos_obrigatorios
    Entra na tela de registro
    # Digita os campos Full Name
    # Digita o campo Email address
    # Digita o campo Phone
    # Seleciona uma opcao em Gender
    # Seleciona uma opcao em Country
    # Submete o registro
