#language: pt

Funcionalidade: Consultar CFe-SAT
Para validar as Notas de Conhecimento de Transporte ELetrônico
Como usuário do sistema
Gostaria de consultar e validar as mesmas no sistema

Contexto: Cliente arquivei ter a possibilidade de consultar CFe-SAT

@cfesatemitido
Cenário: Realizar consulta de CFe-SAT Emitidos com sucesso
    Dado que o usuário esteja na tela de CFe-SAT na aba de Emitidos
    Quando informar uma número de CFe-SAT Válida e pesquisar
    Então o sistema deve retornar a CFe-SAT pesquisada
    E permitir visualizar a mesma

@cfesatemitido
Cenário: Realizar consulta de CFe-SAT Emitidos com sistema da SAT fora de serviço
    Dado que o usuário esteja na tela de CFe-SAT na aba de Emitidos
    Quando informar uma número de CFe-SAT Válida e pesquisar
    Mas o sistema do SAT está fora de serviço
    Então o sistema NÃO deve retornar a CFe-SAT pesquisada
    E Informar o motivo da inconformidade

@cfesatrecebido
Cenário: Realizar consulta de CFe-SAT recebido com sucesso
    Dado que o usuário esteja na tela de CFe-SAT na aba de Recebidos
    Quando informar uma número de CFe-SAT Válida e pesquisar
    Então o sistema deve retornar a CFe-SAT pesquisada
    E permitir visualizar a mesma

@cfesatrecebido
Cenário: Realizar consulta de CFe-SAT recebido com sistema da SAT fora de serviço
    Dado que o usuário esteja na tela de CFe-SAT na aba de Recebidos
    Quando informar uma número de CFe-SAT Válida e pesquisar
    Mas o sistema do SAT está fora de serviço
    Então o sistema NÃO deve retornar a CFe-SAT pesquisada
    E Informar o motivo da inconformidade