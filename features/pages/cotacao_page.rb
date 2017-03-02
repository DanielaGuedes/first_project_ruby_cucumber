=begin
SitePrism gives you a simple, clean and semantic DSL for describing your site using the Page Object Model pattern,
for use with Capybara in automated acceptance testing.

# @author Reinaldo Mateus

Seguindo as boas Praticas de identificados
ID, Class, CSS Selector (Nao deixar eles muito grande e deve ser dinamico).

A ideia eh separa bem os elementos da classe e tenta montar funcoes globais em helps.

=end

require 'site_prism'
require 'selenium-webdriver'


class CotacaoPage < SitePrism::Page

  # Declarando todos os elementos da page login.
  element :link_auto, ".featured-products__item.auto a[class*='link-more']"
  element :item_auto, ".featured-products__item.auto a[class*='link-more']"
  element :page_auto, ".site-content h1[class*='title'] .bold"
  element :bt_quotation,".site-content .bt-quotation"
  element :phone,  "auto_order_flow_lead_person_data_lead_person_attributes_phone"
  element :email, "auto_order_flow_lead_person_data_lead_person_attributes_email"
  element :bt_submit, "input[type=submit]"
  element :carro, "auto_order_flow_pricing_requirements_vehicle_attributes_make"
  element :modelo, "auto_order_flow_pricing_requirements_vehicle_attributes_model"
  element :ano_modelo "auto_order_flow_pricing_requirements_vehicle_attributes_year"
  element :versao "auto_order_flow_pricing_requirements_vehicle_attributes_version"
  element :uso "auto_order_flow_pricing_requirements_vehicle_attributes_usage"
  element :tenho "auto_order_flow_pricing_requirements_vehicle_attributes_purchased"
  element :utilizando "auto_order_flow_pricing_requirements_vehicle_attributes_collected"
  element :cep "auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode"
  element :sexo "auto_order_flow_pricing_requirements_insured_person_attributes_gender"
  element :nascimento "auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth"
  element :estado_civil "auto_order_flow_pricing_requirements_insured_person_attributes_marital_status"
  element :pessoa_mais_dirige "auto_order_flow_pricing_requirements_driver_attributes_same_as_insured_person"
  element :contratar_cobertura "auto_order_flow_pricing_requirements_driver_attributes_young_driver"
  element :sinistro "auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim"
  element :bt_submit, "input[type=submit]"
end
