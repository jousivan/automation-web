# language: pt

Funcionalidade: Listar e Detalhar Unidades

Sendo um usuário
Posso listar unidades no site da Fleury
Para que eu consigar detalhar uma unidade

Esquema do Cenário: Listar e detalhar unidade
    Dado que eu clico no menu Unidades no Menu
    Quando eu seleciono a <facilidade> no filtro
    E clico no link para ver detalhes
    Então valido a <unidade> apresentada

    Exemplos:
      | facilidade                                        | unidade                  |
      | 'Atendimento aos domingos, Unidades em shoppings' | 'Shopping Anália Franco' |
      | 'Próximo ao metrô, Vacinação'                     | 'Paraíso'                |
