require 'capybara/dsl'
require 'site_prism'


class VehicleDataPage < SitePrism::Page

    element :placa, "#auto_order_flow_vehicle_data_vehicle_attributes_license_plate"
    element :adaptacoes, "#adapted"
    element :blindado, "#auto_order_flow_vehicle_data_vehicle_attributes_bullet_proof"

end
