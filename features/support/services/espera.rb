class Espera
    include HTTParty
    base_uri CONFIG['url_api']
  
    # Utilizado para garantir o carregamento completo dos elementos na pagina. Fazendo com que a automação esperasse o tempo 
    # de carregamento do próprio site.
    def busca
      self.class.post('/_search').parsed_response
      self.class.post('/_search').response.code
    end
  end