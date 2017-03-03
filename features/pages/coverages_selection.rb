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


class CoveragesSelectionPage < SitePrism::Page

  # Declarando todos os elementos da page login.
  element :quantidade_itens, ".coverages-list input[type='checkbox']:checked"
  element :quantidade_sugestao, ".assistance input[type='checkbox']:checked"
  element :full_name, "auto_order_flow_insured_person_data_insured_person_attributes_name"
  element :CPF,"auto_order_flow_insured_person_data_insured_person_attributes_cpf"
  element :nacionalidade, "auto_order_flow_insured_person_data_insured_person_attributes_nationality"

  element :phone,  "auto_order_flow_lead_person_data_lead_person_attributes_phone"
  element :email, "auto_order_flow_lead_person_data_lead_person_attributes_email"
  element :bt_submit, "input[type=submit]"
  element :carro, "auto_order_flow_pricing_requirements_vehicle_attributes_make"
  element :modelo, "auto_order_flow_pricing_requirements_vehicle_attributes_model"
  element :ano_modelo, "auto_order_flow_pricing_requirements_vehicle_attributes_year"
  element :versao, "auto_order_flow_pricing_requirements_vehicle_attributes_version"
  element :uso, "auto_order_flow_pricing_requirements_vehicle_attributes_usage"
  element :tenho, "auto_order_flow_pricing_requirements_vehicle_attributes_purchased"
  element :utilizando, "auto_order_flow_pricing_requirements_vehicle_attributes_collected"
  element :cep, "auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode"
  element :sexo, "auto_order_flow_pricing_requirements_insured_person_attributes_gender"
  element :nascimento, "auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth"
  element :estado_civil, "auto_order_flow_pricing_requirements_insured_person_attributes_marital_status"
  element :pessoa_mais_dirige, "auto_order_flow_pricing_requirements_driver_attributes_same_as_insured_person"
  element :contratar_cobertura, "auto_order_flow_pricing_requirements_driver_attributes_young_driver"
  element :sinistro, "auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim"
  element :bt_submit, "input[type=submit]"


  # @driver.find_element(:css, ".select2-selection__placeholder").send_keys "a"
  # @driver.find_element(:css, ".select2-search__field").send_keys "analista de desenvolvimento de sistemas"
  # @driver.find_element(:css, ".select2-search__field").send_keys :enter
  # !60.times{ break if (element_present?(:id, "auto_order_flow_insured_person_data_insured_person_attributes_salary_range") rescue false); sleep 1 }
  # Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "auto_order_flow_insured_person_data_insured_person_attributes_salary_range")).select_by(:text, "De R$ 2.500,01 a R$ 4.500,00")
  # !60.times{ break if (element_present?(:id, "auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number") rescue false); sleep 1 }
  # !60.times{ break if (element_present?(:id, "auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_complement") rescue false); sleep 1 }
  # @driver.find_element(:id, "auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_complement").clear
  # @driver.find_element(:id, "auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_complement").send_keys "ap 302"
  # @driver.find_element(:id, "auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number").clear
  # @driver.find_element(:id, "auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number").send_keys "52"
  # !60.times{ break if (element_present?(:name, "commit") rescue false); sleep 1 }
  # @driver.find_element(:name, "commit").click
  # !60.times{ break if (element_present?(:id, "auto_order_flow_vehicle_data_vehicle_attributes_license_plate") rescue false); sleep 1 }
  # @driver.find_element(:id, "auto_order_flow_vehicle_data_vehicle_attributes_license_plate").send_keys "JXI-4121"
  # verify { (@driver.find_element(:id, "auto_order_flow_vehicle_data_vehicle_attributes_license_plate").attribute("value")).should == "JXI-4121" }
  # Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "adapted")).select_by(:text, "não possui")
  # Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "auto_order_flow_vehicle_data_vehicle_attributes_bullet_proof")).select_by(:text, "não é")
  # !60.times{ break if (element_present?(:name, "commit") rescue false); sleep 1 }
  # !60.times{ break if (element_present?(:css, "h2.summary-credit-card__title") rescue false); sleep 1 }
  # element_present?(:css, "h2.summary-credit-card__title").should be_true

end
