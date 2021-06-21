class CarrinhoComprasPage < SitePrism::Page
    set_url '/index.php?id_product=1&controller=product'
    element :botton_add_carrinho, '#add_to_cart [name="Submit"]'  
    element :botton_continue, '[title="Proceed to checkout"]'
    element :botton_continue_endress, '[name="processAddress"]'
    element :box_terms, '#cgv'
    element :botton_pagament, '[name="processCarrier"]'
    element :cartao_cred, '[title="Pay by bank wire"]'

    def add_carrinho
        botton_add_carrinho.click
    end

    def continuar
        botton_continue.click
    end
    def confirmar_endereco
        botton_continue_endress.click
    end

    def aceitar_termos
        check 'cgv', visible: false
    end

    def ir_para_pagamento
        botton_pagament.click
    end

    def escolher_cartao_credito
        cartao_cred.click
    end

    def confirmar_compra
        find_button('I confirm my order').click
    end
end