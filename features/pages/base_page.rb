=begin

A Page Base contem as funcoes basicas do selenium em uma pagina,
as especificas criamos outra classe dentro de helps.

=end

require 'capybara/dsl'
require 'site_prism'


class BasePageWeb < SitePrism::Page

    #element :input_email, "email"

    def fill_data(elem_id, send_value)

      @elem_id = elem_id
      @send_value = send_value

      # Primeiro mapear o elemento e ver se ele foi criado.
      user_elem = page.find(:id, @elem_id, visible: true)
      print(user_elem)

      # preenche os dados
      user_elem.send_keys @send_value

      # Verifica se o campo foi preenchido.
      user_elem = page.find(:id, @elem_id)
      #page.should have_selector(:id, @elem_id, :value => @send_value)
      expect(user_elem.value).to eql(@send_value)

      # Imprimir valor
      user_elem = page.find(:id, @elem_id)
      puts("\n" + user_elem.value) # adicionar ao log.
    end
end
