*** Settings ***
Documentation    Esta suíte valida os registros no site

Resource         ../Resources/baseKeywords.robot    
Resource         ../Resources/registroKeywords.robot

Test Setup       Abrir navegador
#Test Teardown    Fechar navegador

*** Test Cases ***
Caso de Teste 1: Registrar Usuário
    [Documentation]    Este cenário registra e exclui usuário
    [Tags]             registro
    Clique no botão 'Signup / Login'
    Verifique 'Inscrição de novo usuário!' é visível
    Digite o nome e endereço de e-mail
    Clique no botão 'Inscrever-se'
    Verifique se 'INSERIR INFORMAÇÕES DA CONTA' está visível
    Preencha todos os dados
    Clique em 'botão Criar conta'
    Verifique se 'CONTA CRIADA!' é visível
    Clique no botão 'Continuar'
    Verifique se 'Logado como nome de usuário' está visível
    # Clique no botão 'Excluir conta'
    # Verifique se 'CONTA EXCLUÍDA!' está visível e clique no botão 'Continuar' 
