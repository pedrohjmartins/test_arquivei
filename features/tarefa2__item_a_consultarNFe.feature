#language: pt

Funcionalidade: Consultar NFe's
Para validar as Notas Fiscais Eletrônicas
Como usuário do sistema
Gostaria de consultar e validar as mesmas no sistema

Contexto: Cliente arquivei ter a possibilidade de consultar NFe's

@nferecebida
Cenário: Realizar consulta de NFe's recebidas com sucesso
    Dado que o usuário esteja na tela de NFe na aba de Recebidas
    Quando informar uma número de NFe Válida e pesquisar
    Então o sistema deve retornar a NFe pesquisada
    E permitir visualizar a mesma

@nferecebida
Cenário: Realizar consulta de NFe's recebida com sistema da SEFAZ fora de serviço
    Dado que o usuário esteja na tela de NFe na aba de Recebidas
    Quando informar uma número de NFe Válida e pesquisar
    Mas o sistema do SEFAZ está fora de serviço
    Então o sistema NÃO deve retornar a NFe pesquisada
    E Informar o motivo da inconformidade

@nfeemitida
Cenário: Realizar consulta de NFe's emitida com sucesso
    Dado que o usuário esteja na tela de NFe na aba de Emitidas
    Quando informar uma número de NFe Válida e pesquisar
    Então o sistema deve retornar a NFe pesquisada
    E permitir visualizar a mesma

@nfeemitida
Cenário: Realizar consulta de NFe's emitida com sistema da SEFAZ fora de serviço
    Dado que o usuário esteja na tela de NFe na aba de Emitidas
    Quando informar uma número de NFe Válida e pesquisar
    Mas o sistema do SEFAZ está fora de serviço
    Então o sistema NÃO deve retornar a NFe pesquisada
    E Informar o motivo da inconformidade
