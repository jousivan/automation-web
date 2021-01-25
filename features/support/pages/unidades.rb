class UnidadesPage < SitePrism::Page
    include Capybara::DSL
    
    element :filtro_facilidade, :xpath, "//div[@id='checkoox-select-facilities']/div"
    element :listar_facilidade_primeira_unidade, :xpath,
    "(//div[@class='unit-cellcomponentstyle__UnitCellStyled-sc-1rcmx1c-0 juXfhN'])[1]/div[1]/div"
    element :primeira_unidade, :xpath, '(//h3)[1]'
    element :detalhar_primeira_unidade, :xpath, "(//div[text()='Ver detalhes'])[1]"

    def acessar()
      find(:xpath, "(//div[text()='Unidades'])[1]").click
    end

    def titulo
      page.has_xpath?("//div[@id='checkoox-select-facilities']/div")
      page.title
    end
  
    def abrir_filtro_facilidades
      filtro_facilidade.click
    end
  
    def selecionar_facilidades(facilidades)
      find(:xpath, "//input[@value='#{facilidades}']/../..//label[text()='#{facilidades}']").click
    end
  
    def primeira_facilidade
      listar_facilidade_primeira_unidade.text
    end
  
    def nome_primeira_unidade
      primeira_unidade.text
    end
  
    def ver_detalhes_primeira_unidade      
      detalhar_primeira_unidade.click
    end
  end
  