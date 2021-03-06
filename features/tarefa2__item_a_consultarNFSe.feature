#language: pt

Funcionalidade: Consultar NFe's
Para validar as Notas Fiscais Eletrônicas de Serviço
Como usuário do sistema
Gostaria de consultar e validar as mesmas no sistema

Contexto: Cliente arquivei ter a possibilidade de consultar NFe's

@nfserecebida
Cenário: Realizar consulta de NFSe's recebidas com sucesso
    Dado que o usuário esteja na tela de NFSe na aba de Recebidas
    Quando informar uma número de NFSe Válida e pesquisar
    Então o sistema deve retornar a NFSe pesquisada
    E permitir visualizar a mesma

@nfserecebida
Cenário: Realizar consulta de NFSe's recebida com sistema da prefeitura fora de serviço
    Dado que o usuário esteja na tela de NFSe na aba de Recebidas
    Quando informar uma número de NFSe Válida e pesquisar
    Mas o sistema da prefeitura está fora de serviço
    Então o sistema NÃO deve retornar a NFSe pesquisada
    E Informar o motivo da inconformidade

@nfseemitida
Cenário: Realizar consulta de NFSe's emitida com sucesso
    Dado que o usuário esteja na tela de NFSe na aba de Emitidas
    Quando informar uma número de NFSe Válida e pesquisar
    Então o sistema deve retornar a NFSe pesquisada
    E permitir visualizar a mesma

@nfseemitida
Cenário: Realizar consulta de NFSe's emitida com sistema da prefeitura fora de serviço
    Dado que o usuário esteja na tela de NFSe na aba de Emitidas
    Quando informar uma número de NFSe Válida e pesquisar
    Mas o sistema da prefeitura está fora de serviço
    Então o sistema NÃO deve retornar a NFe pesquisada
    E Informar o motivo da inconformidade
