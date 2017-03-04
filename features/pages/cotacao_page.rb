require 'site_prism'
require 'selenium-webdriver'


class CotacaoPage < SitePrism::Page

  # Declarando todos os elementos da page Cotacao.
  element :link_saiba_mais, ".featured-products__item.auto a[class*='link-more']"
  element :bt_quotation,".site-content .bt-quotation"
  element :nome, "#auto_order_flow_lead_person_data_lead_person_attributes_name"
  element :phone,  "#auto_order_flow_lead_person_data_lead_person_attributes_phone"
  element :email, "#auto_order_flow_lead_person_data_lead_person_attributes_email"
  element :bt_submit, "input[type=submit]"
  element :carro, "select#auto_order_flow_pricing_requirements_vehicle_attributes_make"
  element :modelo, "#auto_order_flow_pricing_requirements_vehicle_attributes_model"
  element :ano_modelo, "#auto_order_flow_pricing_requirements_vehicle_attributes_year"
  element :versao, "#auto_order_flow_pricing_requirements_vehicle_attributes_version"
  element :uso, "#auto_order_flow_pricing_requirements_vehicle_attributes_usage"
  element :tenho, "#auto_order_flow_pricing_requirements_vehicle_attributes_purchased"
  element :utilizando, "#auto_order_flow_pricing_requirements_vehicle_attributes_collected"
  element :cep, "#auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode"
  element :sexo, "#auto_order_flow_pricing_requirements_insured_person_attributes_gender"
  element :nascimento, "#auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth"
  element :estado_civil, "#auto_order_flow_pricing_requirements_insured_person_attributes_marital_status"
  element :contratar_cobertura, "#auto_order_flow_pricing_requirements_driver_attributes_young_driver"
  element :pessoa_mais_dirige, "#auto_order_flow_pricing_requirements_driver_attributes_same_as_insured_person"
  element :sinistro, "#auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim"
  element :bt_submit, "input[type=submit]"
end
