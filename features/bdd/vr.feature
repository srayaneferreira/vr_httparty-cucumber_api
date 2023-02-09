# language: pt

Funcionalidade: Tipos de estabelecimento
Validar se no retorno do serviço possui a chave "typeOfEstablishment"

Cenario: Validar retorno do servico
    Dado que o usuario consulte informacoes sobre o estabelecimento
    Quando for realizado o GET na api
    Entao a chave typeOfEstablishment deve ser retornada