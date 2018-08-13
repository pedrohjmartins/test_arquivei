#language: pt

Funcionalidade: Fechamento de Mês
Para validar o fechamento de mês
Como usuário do sistema
Gostaria de validar o fechamento de mês

Contexto: Cliente arquivei ter a possibilidade de realizar o fechamento de mês

@downloadfechamentomes
Cenário: Realizar download do fechamento de mês com sucesso
    Dado que o usuário esteja na tela de Fechamento de Mês
    Quando selecionar um mês e ano com documentos gerados
    E selecionar os documentos fiscais desejaveis
    Então o sistema deve permitir realizar o download desses documentos

@errodownloadfechamentomes
Cenário: Realizar download do fechamento de mês informando um periódo inválido
    Dado que o usuário esteja na tela de Fechamento de Mês
    Quando selecionar um mês e ano que não possui documentos gerados
    E selecionar os documentos fiscais desejaveis
    Então o sistema NÃO deve permitir Realizar
    E informar que não existe documentos nesse período

@emailfechamentomes
Cenário: Realizar envio de email do fechamento de mês com sucesso
    Dado que o usuário esteja na tela de Fechamento de Mês
    Quando selecionar um mês e ano com documentos gerados
    E selecionar os documentos fiscais desejaveis
    E informe um email válido
    Então o sistema deve permitir enviar o fechamento do mês por email

@erroemailfechamentomes
Cenário: Realizar envio de email do fechamento de mês com sucesso
    Dado que o usuário esteja na tela de Fechamento de Mês
    Quando selecionar um mês e ano que não possui documentos gerados
    E selecionar os documentos fiscais desejaveis
    E informe um email válido
    Então o sistema não deve permitir enviar o fechamento do mês por email
    E informar que não existe documentos nesse período