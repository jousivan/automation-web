Before do
 
    # pages
    @home = HomePage.new
    @unidades = UnidadesPage.new
    @detalhe_unidade = DetalheUnidadePage.new
  
    page.driver.browser.manage.window.maximize
    
    @home.load
    
    end
  
  After do |scenario|
    file_name = scenario.name.gsub(%r{([_@#!%()\-=;><,{}\~\[\]\./\?\"\*\^\$\+\-]+)}, '')
    file_name = scenario.status.to_s.gsub(/[:]/, '') + '_' + file_name.downcase.gsub(/[ ]/, '_')
    screenshot_file = page.save_screenshot("log/screenshots/#{file_name}.png")
    attach(screenshot_file, 'image/png')
 end

  