# language: pt

    @criar_login
Funcionalidade: Criar login
    Eu como cliente
    Quero poder criar uma conta
    Para conseguir ter acesso a meu histórico e fazer compras

    @criar_login_valido
    Cenário: Criar login valido
        Dado que vejo a pagina de login
        Quando colocar email "valido"
        Então vejo o formulário de cadastro
 
    @criar_login_invalido
    Cenário: Criar login inválida
        Dado que vejo a pagina de login
        Quando colocar email "invalido"
        Então vejo mensagem de email invalido
    
    @cadastro
    Cenário: Realizar cadastro
        Dado que vejo a pagina de login
        Quando preencher o formulario com "dados validos"
        Então crio cadastro com sucesso

    @cadastro_duplicado
    Cenário: Realizar cadastro de email duplicado
        Dado que vejo a pagina de login
        Quando colocar email já "cadastrado"
        Então vejo uma mensagem de que o email ja foi cadastrado