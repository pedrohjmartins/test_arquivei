#language: pt

Funcionalidade: Consultar CTe's
Para validar as Notas de Conhecimento de Transporte ELetrônico
Como usuário do sistema
Gostaria de consultar e validar as mesmas no sistema

Contexto: Cliente arquivei ter a possibilidade de consultar CTe's

@ctetomador
Cenário: Realizar consulta de CTe's como Tomador com sucesso
    Dado que o usuário esteja na tela de CTe na aba de Tomador
    Quando informar uma número de CTe Válida e pesquisar
    Então o sistema deve retornar a CTe pesquisada
    E permitir visualizar a mesma

@ctetomador
Cenário: Realizar consulta de CTe's como Tomador com sistema da SEFAZ fora de serviço
    Dado que o usuário esteja na tela de CTe na aba de Tomador
    Quando informar uma número de CTe Válida e pesquisar
    Mas o sistema do SEFAZ está fora de serviço
    Então o sistema NÃO deve retornar a CTe pesquisada
    E Informar o motivo da inconformidade

@ctenaotomador
Cenário: Realizar consulta de CTe's como não Tomador com sucesso
    Dado que o usuário esteja na tela de CTe na aba de Não Tomador
    Quando informar uma número de CTe Válida e pesquisar
    Então o sistema deve retornar a CTe pesquisada
    E permitir visualizar a mesma

@ctenaotomador
Cenário: Realizar consulta de CTe's como não Tomador com sistema da SEFAZ fora de serviço
    Dado que o usuário esteja na tela de CTe na aba de Não Tomador
    Quando informar uma número de CTe Válida e pesquisar
    Mas o sistema do SEFAZ está fora de serviço
    Então o sistema NÃO deve retornar a CTe pesquisada
    E Informar o motivo da inconformidade