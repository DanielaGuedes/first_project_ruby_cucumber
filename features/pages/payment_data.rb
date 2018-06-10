
class PaymentDataPage < SitePrism::Page

    element :cartao_number, "#checkout_credit_card_number"
    element :cartao_nome, "#checkout_credit_card_name"
    element :cvc, "#checkout_credit_card_cvv_number"

end
