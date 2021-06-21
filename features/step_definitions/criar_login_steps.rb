Dado('que vejo a pagina de login') do
    @sign_in = SignInPage.new
    @sign_in.load
end

Quando('colocar email {string}') do |email|
  @sign_in = SignInPage.new

    case email
    when 'valido'
        @sign_in.criar_login 'cm2@email.com'
    when 'invalido'
        @sign_in.criar_login 'cnaoemail.com'
    end
    sleep(5)

end

Então('vejo o formulário de cadastro') do
    expect(page).to have_content('YOUR PERSONAL INFORMATION')
    sleep(4) 
end

Então('vejo mensagem de email invalido') do
    expect(page).to have_content('Invalid email address.')
end

Quando('preencher o formulario com {string}') do |campos|
    @sign_in = SignInPage.new
    
    @sign_in.criar_login 'cm2@email.com'
    @sign_in.cadastrar_login('Mrs.', 'Cris', 'Silva', '543210', '16', 'November', '1994', 'TestCo', '320 Brooklin, New York, NY 10010, USA', 'New York', 'Alabama', '10010', '155544488877') 

end

Então('crio cadastro com sucesso') do
    expect(page).to have_content('Welcome to your account. Here you can manage all of your personal information and orders.')
 
end


Quando('colocar email já {string}') do |email_cadastrado|
    @sign_in.criar_login 'cm@email.com'
end

Então('vejo uma mensagem de que o email ja foi cadastrado') do
    expect(page).to have_content('An account using this email address has already been registered. Please enter a valid password or request a new one.')
    sleep(2)
end