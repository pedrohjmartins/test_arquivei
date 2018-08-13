#language: pt

Funcionalidade: Consultar MDFe
Para validar as Notas Fiscais Eletrônicas
Como usuário do sistema
Gostaria de consultar e validar as mesmas no sistema

Contexto: Cliente arquivei ter a possibilidade de consultar MDFe

@mdfeoutros
Cenário: Realizar consulta de outras MDFe com sucesso
    Dado que o usuário esteja na tela de MDFe na aba de Outros
    Quando informar uma número de MDFe Válida e pesquisar
    Então o sistema deve retornar a MDFe pesquisada
    E permitir visualizar a mesma

@mdfeoutros
Cenário: Realizar consulta de MDFe recebida com sistema da SEFAZ fora de serviço
    Dado que o usuário esteja na tela de MDFe na aba de Outros
    Quando informar uma número de MDFe Válida e pesquisar
    Mas o sistema do SEFAZ está fora de serviço
    Então o sistema NÃO deve retornar a MDFe pesquisada
    E Informar o motivo da inconformidade

@mdfeemitida
Cenário: Realizar consulta de MDFe emitida com sucesso
    Dado que o usuário esteja na tela de MDFe na aba de Emitidos
    Quando informar uma número de MDFe Válida e pesquisar
    Então o sistema deve retornar a MDFe pesquisada
    E permitir visualizar a mesma

@mdfeemitida
Cenário: Realizar consulta de MDFe emitida com sistema da SEFAZ fora de serviço
    Dado que o usuário esteja na tela de MDFe na aba de Emitidos
    Quando informar uma número de MDFe Válida e pesquisar
    Mas o sistema do SEFAZ está fora de serviço
    Então o sistema NÃO deve retornar a MDFe pesquisada
    E Informar o motivo da inconformidade
