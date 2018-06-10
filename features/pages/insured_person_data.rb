
class InsuredPersonDataPage < SitePrism::Page

    element :full_name, "#auto_order_flow_insured_person_data_insured_person_attributes_name"
    element :cpf,"#auto_order_flow_insured_person_data_insured_person_attributes_cpf"
    element :nacionalidade, "#auto_order_flow_insured_person_data_insured_person_attributes_nationality"
    element :nasci_em,  "#auto_order_flow_insured_person_data_insured_person_attributes_nationality"
    element :profissao, "#select2-auto_order_flow_insured_person_data_insured_person_attributes_occupation-container"
    element :profissao_input, ".select2-search__field"
    element :renda, "#auto_order_flow_insured_person_data_insured_person_attributes_salary_range"
    element :cep, "#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_zipcode"
    element :rua, "#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_street"
    element :number, "#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_number"
    element :complemento, "#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_complement"
    element :bairro, "#auto_order_flow_insured_person_data_insured_person_attributes_address_attributes_neighborhood"

end
