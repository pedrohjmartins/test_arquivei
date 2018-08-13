#language: pt

Funcionalidade: Importar XML
Para validar a importação de arquivos xml
Como usuário do sistema
Gostaria de importar e salvar os documentos no sistema arquivei

Contexto: Cliente arquivei ter a possibilidade de importar arquivos XML

@importarxml
Cenário: Realizar importe de documentos fiscais no formato xml com sucesso
    Dado que o usuário esteja na tela de importar XMLs
    Quando adicionar um documento xml válido
    Então o sistema deve importar esse documento
    E exibir todos os documentos que foram importados

@importardoc
Cenário: Realizar importe de documentos fiscais sem ser no formato XML
    Dado que o usuário esteja na tela de importar XMLs
    Quando adicionar um documento diferente do formato xml
    Então o sistema NÃO deve importar esse documento
    E exibir uma mensagem informando qual o motivo do erro
