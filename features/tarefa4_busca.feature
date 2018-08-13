#language: pt

Funcionalidade: Consultar NFe's através da Data de Emissão
Para validar as consultas de Notas Fiscais Eletrônicas
Como usuário do sistema
Gostaria de consultar e validar as NFe através da data de emissão

            @nfedataemissao @doing
            Cenário: Realizar consulta de NFe's através da data de emissão
            Dado que o usuário tenha importado um xml da NFe com uma <data_emissao> de emissão
            E que o usuário esteja na tela de NFe na aba de emitidas
            Quando pesquisar pela <data> de emissão da NFe
            Então o sistema deve retornar a NFe pesquisada
            E permitir visualizar a mesma

            | data_emissao | data        |
            | 2018010      | nfe-2018010 |
            | 2018020      | nfe-2018020 |
            | 2018021      | nfe-2018021 |