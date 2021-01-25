  Dado('que eu clico no menu Unidades no Menu') do
    @unidades.acessar()
  end
  
  Quando('eu seleciono a {string} no filtro') do |tb|
    expect(@unidades.titulo).to eql 'Unidades'
    facilidades = tb.split(', ')
    @unidades.abrir_filtro_facilidades
    facilidades.each do |f|
      @unidades.selecionar_facilidades(f)
      expect(@unidades.primeira_facilidade).to include(f)
    end
  end
  
  Quando('clico no link para ver detalhes') do
    @primeira_unidade = @unidades.nome_primeira_unidade
    @unidades.ver_detalhes_primeira_unidade
    expect(Espera.new.busca).to eql '200'
  end
  
  Quando('valido a {string} apresentada') do |unit|
    expect(@primeira_unidade).to eql unit
    expect(@detalhe_unidade.titulo).to eql "Unidade #{@primeira_unidade} › Laboratórios | Fleury Medicina e Saúde"
    expect(@detalhe_unidade.label_titulo_unidade).to eql @primeira_unidade
  end
  