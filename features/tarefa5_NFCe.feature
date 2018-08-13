#language: pt

Funcionalidade: Consultar NFCe Protocolada
Para validar as Notas Fiscais de Consimidores
Como usuário do sistema
Gostaria de consultar e validar as protocoladas ou não pela SEFAZ no sistema da arquivei

Contexto: Cliente arquivei ter a possibilidade de consultar NFCe protocoladas ou não pela SEFAZ

@nfceprotocolada @nfce
Cenário: Realizar consulta de NFCe's protocoladas pelo SEFAZ
    Dado que o usuário esteja na tela de NFCe na aba de emitidos
    Quando selecionar a modalidade ou filtro protocolada pelo SEFAZ
    E informar um número de NFCe Válida e pesquisar
    Então o sistema deve retornar a NFCe pesquisada
    E permitir visualizar a mesma

@nfcenaoprotocolada @nfce
Cenário: Realizar consulta de NFCe's não protocoladas pelo SEFAZ
    Dado que o usuário esteja na tela de NFCe na aba de emitidos
    Quando selecionar a modalidade ou filtro protocolada pelo SEFAZ
    E informar uma número de NFCe Válida e pesquisar
    Então o sistema deve retornar a NFCe pesquisada
    E permitir visualizar a mesma

@nfceambas
Cenário: Realizar consulta de NFCe's sem informar filtro de protocolada ou não pelo SEFAZ
    Dado que o usuário esteja na tela de NFCe na aba de emitidos
    Quando informar um número de NFCe Válida protocolada e não protocolada e pesquisar
    Então o sistema deve retornar as duas NFCe pesquisada, informando na coluna que uma está protocolada e a outra não
    E permitir visualizar a mesma

@downloadfechamentomesnfceprotocolada @fechamentomes
Cenário: Realizar download do fechamento de mês de nfce protocoladas pelo SEFAZ
    Dado que o usuário esteja na tela de Fechamento de Mês
    Quando selecionar um mês e ano com documentos NFCe gerados
    E selecionar a opção de incluir apenas documentos Protocolados SEFAZ
    Então o sistema deve permitir realizar o download e exibir apenas os documentos selecionados

@downloadfechamentomesnfcenaoprotocolada @fechamentomes
Cenário: Realizar download do fechamento de mês de nfce não protocoladas pelo SEFAZ
    Dado que o usuário esteja na tela de Fechamento de Mês
    Quando selecionar um mês e ano com documentos NFCe gerados
    E selecionar a opção de incluir apenas documentos Não Protocolados SEFAZ
    Então o sistema deve permitir realizar o download e exibir apenas os documentos selecionados

@downloadfechamentomesnfceprotocoladaenaoprotocoladas @fechamentomes
Cenário: Realizar download do fechamento de mês de nfce protocoladas e não protocoladas pelo SEFAZ
    Dado que o usuário esteja na tela de Fechamento de Mês
    Quando selecionar um mês e ano com documentos NFCe gerados
    E selecionar a opção de incluir os documentos Protocolados e Não Protocolados pelo SEFAZ
    Então o sistema deve permitir realizar o download e exibir apenas os documentos selecionados


@emailfechamentomesnfceprotocolada @fechamentomes
Cenário: Realizar envio de email do fechamento de mês de nfce protocoladas pelo SEFAZ
    Dado que o usuário esteja na tela de Fechamento de Mês
    Quando selecionar um mês e ano com documentos NFCe gerados
    E selecionar a opção de incluir apenas documentos Protocolados SEFAZ
    Então o sistema deve permitir realizar o envio de email e exibir apenas os documentos selecionados

@emailfechamentomesnfcenaoprotocolada @fechamentomes
Cenário: Realizar envio de email do fechamento de mês de nfce não protocoladas pelo SEFAZ
    Dado que o usuário esteja na tela de Fechamento de Mês
    Quando selecionar um mês e ano com documentos NFCe gerados
    E selecionar a opção de incluir apenas documentos Não Protocolados SEFAZ
    Então o sistema deve permitir realizar o envio de email e exibir apenas os documentos selecionados

@emaildfechamentomesnfceprotocoladaenaoprotocolada @fechamentomes
Cenário: Realizar download do fechamento de mês de nfce protocoladas e não protocoladas pelo SEFAZ
    Dado que o usuário esteja na tela de Fechamento de Mês
    Quando selecionar um mês e ano com documentos NFCe gerados
    E selecionar a opção de incluir os documentos Protocolados e Não Protocolados pelo SEFAZ
    Então o sistema deve permitir realizar o envio de email e exibir apenas os documentos selecionados