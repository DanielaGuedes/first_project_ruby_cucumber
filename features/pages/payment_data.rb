require 'capybara/dsl'
require 'site_prism'


class VehicleDataPage < SitePrism::Page

    element :cartao_number, "#checkout_credit_card_number"
    element :cartao_nome, "#checkout_credit_card_name"
    element :blindado, "#auto_order_flow_vehicle_data_vehicle_attributes_bullet_proof"
    element :cvc, "#checkout_credit_card_cvv_number"
end
