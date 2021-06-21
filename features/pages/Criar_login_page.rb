class SignInPage < SitePrism::Page
    set_url '/index.php?controller=authentication&back=my-account'

    element :email_login, '#email'
    element :senha_login, '#passwd'
    element :btn_sign_in, '#SubmitLogin'

    element :c_email, '#email_create'
    element :btn_create, '#SubmitCreate'

    element :radio_title, '#id_gender2'
    element :i_first_name, '#customer_firstname'
    element :i_last_name, '#customer_lastname'
    element :i_password, '#passwd'
    element :btn_register, '#submitAccount'
    element :i_day, '#uniform-days'
    element :i_month, '#uniform-months'
    element :i_year, '#uniform-years'
    element :i_company, '#company'
    element :i_address1, '#address1'
    element :i_city, '#city'
    element :i_state, '#uniform-id_state'
    element :i_postcode, '#postcode'
    element :i_phone_mobile, '#phone_mobile'

    def criar_login(email)
        c_email.set email
        btn_create.click
    end

    def login(email, senha)
        email_login.set email
        senha_login.set senha
        btn_sign_in.click
    end

    def cadastrar_login(title, first_name, last_name, password, day, month, year, company, address1, city, state, postcode, phone_mobile)
        radio_title.choose(option: title)
        i_first_name.set first_name
        i_last_name.set last_name
        i_password.set password
        i_day.select(day, from: 'days', visible: false)
        i_month.select(month, from: 'months', visible: false)
        i_year.select(year, from: 'years', visible: false)
        i_company.set company
        i_address1.set address1
        i_city.set city
        i_state.select(state, from: 'id_state', visible: false)
        i_postcode.set postcode
        i_phone_mobile.set phone_mobile
        btn_register.click
    end

end