#language: pt

Funcionalidade: login Arquivei
Para validar a autenticação
Como usuário do sistema
Gostaria de validar as permissões de acesso

Contexto: possibilidade de acessar o sistema
Dado que usuário esteja na tela de login do Arquivei

      @login @loginvalido
      Esquema do Cenário: Login válido
      Quando usuário informar um login com <email> e <senha> válido
      Então o usuário deve ser autenticado com sucesso
      E o sistema deve exibir a <pagina_esperada>


      Exemplos:
      | email                        | senha      | pagina_esperada    |
      | "pedrohjmartins@outlook.com" | "mudar123" | "Painel Principal" |

      @login @logininvalido
      Esquema do Cenário: Login inválido
      Quando usuário informar um login com <email> e <senha> inválido
      Então o usuário não deve ser autenticado
      E o sistema deve exibir a <mensagem> informando o motivo



      Exemplos:
      | email                        | senha           | mensagem                                      |
      | "pedrohjmartins@outlook.com" | "senhainvalida" | "Falha ao entrar. E-mail ou senha inválidos." |
      | "pedromartins@outlook.com"   | "mudar123"      | "Falha ao entrar. E-mail ou senha inválidos." |


      @login @loginobrigatorio
      Esquema do Cenário: Campos Obrigatórios
      Quando usuário não informar um login com <email> e ou <senha>
      Então o usuário não deve ser autenticado
      E o sistema deve exibir a <mensagem> informando o motivo


      Exemplos:
      | email                        | senha      | mensagem                                                  |
      | ""                           | "mudar123" | "Falha ao entrar. Digite seu e-mail e senha para entrar." |
      | "pedrohjmartins@outlook.com" | ""         | "Falha ao entrar. Digite seu e-mail e senha para entrar." |
