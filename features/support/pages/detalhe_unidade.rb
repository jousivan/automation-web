class DetalheUnidadePage < SitePrism::Page
    include Capybara::DSL
    element :title_unit, :xpath, '//h1'
  
    def titulo
      page.has_xpath?('//img')
      page.title
    end
  
    def label_titulo_unidade
      title_unit.text
    end
  end
  