#language: pt

Funcionalidade: Importar XML
Para validar a importação de arquivos xml
Como usuário do sistema
Gostaria de importar e salvar os documentos no sistema arquivei

Contexto: Cliente arquivei ter a possibilidade de importar arquivos XML

@importarcemxml @importarxml
Cenário: Realizar importe de 100 documentos fiscais no formato xml
Dado que o usuário esteja na tela de importar xmls
Quando adicionar cem documentos xmls válido
Então o sistema deve importar esses documento
E exibir todos os documentos que foram importados

@importarcentoeumxml @importarxml
Cenário: Realizar importe de 101 documentos fiscais no formato xml
Dado que o usuário esteja na tela de importar xmls
Quando adicionar cento e um documentos xmls válido
Então o sistema NÃO deve importar esses documento
E informar que o número máximo de importe por vez é de cem xmls

@exclurixml @importarxml
Cenário: Excluir arquivo xml adicionado
Dado que o usuário esteja na tela de importar xmls
Quando adicionar um documento xml
Mas deseja excluir
Então o sistema deve excluir esse documento
E não exibir mais na lista de xml adicionados

@limparxml @importarxml
Cenário: Limpar arquivos xmls adicionados
Dado que o usuário esteja na tela de importar xmls
Quando adicionar cem documentos xmls válido
Mas deseja limpar
Então o sistema deve limpar todos os documentos xml
E não exibir mais na lista de xml adicionados

@visualizarxml @importarxml
Cenário: Visualizar arquivos xmls adicionados
Dado que o usuário esteja na tela de importar xmls
Quando adicionar um documento xml
E desejar visualziar esse documento inserido
Então o sistema deve exibir o documento selecionado

@importarcemxmlzip @importarxml
Cenário: Realizar importe de 100 documentos fiscais no formato xml zipado
Dado que o usuário esteja na tela de importar xmls
Quando adicionar um arquivo zip com cem documentos xmls válido
Então o sistema deve importar esses documento
E exibir todos os documentos que foram importados

@importarcemxmlzip @importarxml
Cenário: Realizar importe de 101 documentos fiscais no formato xml zipado
Dado que o usuário esteja na tela de importar xmls
Quando adicionar um arquivo zip com cento e um documentos xmls válido
Então o sistema NÃO deve importar esses documento
E informar que o número máximo de importe por vez é de cem xmls

@importarx50mbxml @importarxml
Cenário: Realizar importe de documento fiscal com 50MB
Dado que o usuário esteja na tela de importar xmls
Quando adicionar um documento xml válido com tamanho de 50MB
Então o sistema deve importar esses documento
E exibir todos os documentos que foram importados

@importarcentoeumxml @importarxml
Cenário: Realizar importe de documento fiscal com 51MB
Dado que o usuário esteja na tela de importar xmls
Quando adicionar um documento xml válido com tamanho de 51MB
Então o sistema NÃO deve importar esses documento
E informar que o tamanho máximo do arquivo xml é de 50MB

            @importarxmlinvalido @importarxml
            Esquema do Cenário: Realizar o importe de um XML inválido
            Dado que o usuário esteja na tela de importar xmls
            Quando adicionar um documento xml com um dos seguintes itens inválido:
            | Razão Social       | <rs>     |
            | CNPJ               | <cnpj>   |
            | DDD                | <ddd>    |
            | Telefone           | <tel>    |
            | Endereço           | <end>    |
            | Número             | <numero> |
            | Bairro             | <bairro> |
            | Estado             | <estado> |
            | Cidade             | <cidade> |
            | CEP                | <cep>    |
            | E-Mail             | <email>  |
            | Inscrição Estadual | <ie>     |
            Então o sistema NÃO deve importar esses documento
            E informar que o arquivo está mal formatado com a definição

            Exemplos:
            | <rs>     | <cnpj>         | <ddd>    | <tel>    | <end>            | <numero> | <bairro>       | <estado> | <cidade>     | <cep>    | <email>           | <ie>         |
            | invalido | 98604781000128 | 16       | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste"  | invalido       | 16       | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste"  | 98604781000128 | invalido | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste"  | 98604781000128 | 16       | invalido | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste"  | 98604781000128 | 16       | 33333333 | invalido         | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste"  | 98604781000128 | 16       | 33333333 | "endereço teste" | invalido | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste"  | 98604781000128 | 16       | 33333333 | "endereço teste" | 123      | invalido       | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste"  | 98604781000128 | 16       | 33333333 | "endereço teste" | 123      | "teste bairro" | invalido | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste"  | 98604781000128 | 16       | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | invalido     | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste"  | 98604781000128 | 16       | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | invalido | "teste@teste.com" | 473003750840 |
            | "teste"  | 98604781000128 | 16       | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | invalido          | 473003750840 |
            | "teste"  | 98604781000128 | 16       | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | invalido     |

            @importarxmlobrigatorio @importarxml
            Esquema do Cenário: Realizar o importe de um XML inválido
            Dado que o usuário esteja na tela de importar xmls
            Quando adicionar um documento xml com um dos seguintes itens sem preencher:
            | Razão Social       | <rs>     |
            | CNPJ               | <cnpj>   |
            | DDD                | <ddd>    |
            | Telefone           | <tel>    |
            | Endereço           | <end>    |
            | Número             | <numero> |
            | Bairro             | <bairro> |
            | Estado             | <estado> |
            | Cidade             | <cidade> |
            | CEP                | <cep>    |
            | E-Mail             | <email>  |
            | Inscrição Estadual | <ie>     |
            Então o sistema NÃO deve importar esses documento
            E informar que o arquivo está mal formatado com a definição

            Exemplos:
            | <rs>    | <cnpj>         | <ddd> | <tel>    | <end>            | <numero> | <bairro>       | <estado> | <cidade>     | <cep>    | <email>           | <ie>         |
            | ""      | 98604781000128 | 16    | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste" | ""             | 16    | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste" | 98604781000128 | ""    | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste" | 98604781000128 | 16    | ""       | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste" | 98604781000128 | 16    | 33333333 | ""               | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste" | 98604781000128 | 16    | 33333333 | "endereço teste" | ""       | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste" | 98604781000128 | 16    | 33333333 | "endereço teste" | 123      | ""             | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste" | 98604781000128 | 16    | 33333333 | "endereço teste" | 123      | "teste bairro" | ""       | "São Carlos" | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste" | 98604781000128 | 16    | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | ""           | 13560002 | "teste@teste.com" | 473003750840 |
            | "teste" | 98604781000128 | 16    | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | ""       | "teste@teste.com" | 473003750840 |
            | "teste" | 98604781000128 | 16    | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | ""                | 473003750840 |
            | "teste" | 98604781000128 | 16    | 33333333 | "endereço teste" | 123      | "teste bairro" | "SP"     | "São Carlos" | 13560002 | "teste@teste.com" | ""           |

@importarsemserxml @importarxml
Cenário: Realizar importe documentos fiscais sem ser no formato xml
Dado que o usuário esteja na tela de importar xmls
Quando adicionar um documento que não esteja no formato xmls válido
Então o sistema NÃO deve importar esses documento
E informar que tipo de arquivo é inválido

@visualizarxml @importarxml
Cenário: Permitir imprimir arquivos xmls adicionados
Dado que o usuário esteja na tela de importar xmls
Quando adicionar um documento xml
E desejar imprimir esse documento inserido
Então o sistema deve imprimir o documento selecionado
E exibir uma mensagem informando que o arquivo  foi impresso com sucesso

@enviaremailxml @importarxml
Cenário: Permitir enviar por email arquivos xmls adicionados
Dado que o usuário esteja na tela de importar xmls
Quando adicionar um documento xml
E desejar enviar por email esse documento inserido
Então o sistema deve enviar o documento selecionado
E exibir uma mensagem informando que o email foi enviado com sucesso

@baixarxml @importarxml
Cenário: Permitir baixar arquivos xmls adicionados
Dado que o usuário esteja na tela de importar xmls
Quando adicionar um documento xml
E desejar baixar esse documento inserido
Então o sistema deve baixar o documento selecionado
E exibir uma mensagem informando que o documento foi baixado com sucesso