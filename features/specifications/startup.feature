#language: pt
@startup
Funcionalidade: Manter dados de startup atraves do api
Como usuario do sistema
Eu quero realizar as requisicoes na api
Para manipular as informaçoes do cadastro de startup

Cenario: Cadastrar um startup
    Dado que o endereco da api para manter o cadastro de startup
    Quando realizar uma resquisicao para cadastrar um startup
    Entao a api ira retornar os dados do cadastro da startup respondendo o codigo 201

Cenario: Consultar um startup
    Dado que o endereco da api para manter o cadastro de startup
    Quando realizar uma requisicao passando o ID da startup
    Entao a api ira retornar os dados da startup correspondente respondendo o codigo 200

Cenario: Alterar uma startup
    Dado que o endereco da api para manter o cadastro de startup
    Quando realizar uma requisicao para  alterar uma startup
    Entao a api ira retornar os dados alterados da startup respondendo o codigo 200

Cenario: Deletar uma startup
    Dado que o endereco da api para manter o cadastro de startup
    Quando realizar uma requisicao para excluir uma startup
    Entao a api ira retornar os dados da exclusao respondendo codigo 200
