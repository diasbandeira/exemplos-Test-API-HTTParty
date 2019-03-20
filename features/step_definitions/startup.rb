Dado("que o endereco da api para manter o cadastro de startup") do
   # $url_base = "http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup"
   #Instanciado pela classe...
   
end

Quando("realizar uma resquisicao para cadastrar um startup") do
    #$response = HTTParty.post($url_base, :body=> {"nome":@nome,"cidade":@cidade})
    $response1 = @startup.postStartup
end

Entao("a api ira retornar os dados do cadastro da startup respondendo o codigo {int}") do |int|
    expect($response1.code).to eq (int)
    puts "response code: #{$response1.code}"
    expect($response1.message).to eq ("Created")
    puts "response message: #{$response1.message}"
   
    #puts "ID: #{$response.body}"
    puts "ID: #{$response1["id"]}"
    puts "Data: #{$response1["data"]}"
    puts "Nome: #{$response1["nome"]}"
    puts "Conta: #{$response1["conta"]}"
    puts "Cidade: #{$response1["cidade"]}"
    
   @id = $response1["id"]

end

Quando("realizar uma requisicao passando o ID da startup") do
   $response = @startup.getStartup(@id)
end

Entao("a api ira retornar os dados da startup correspondente respondendo o codigo {int}") do |int|
    puts "ID: #{$response.body}"
    puts "response code: #{$response.code}"
    #expect($response.message).to eq ("Created")
    puts "response message: #{$response.message}"
    expect($response.code).to eq (int)
end

Quando("realizar uma requisicao para  alterar uma startup") do
   
    $response = @startup.putStartup(@id)
end

Entao("a api ira retornar os dados alterados da startup respondendo o codigo {int}") do |int|
    
    puts "response code: #{$response.code}"
    #expect($response.message).to eq ("Created")
    puts "response message: #{$response.message}"
    expect($response.code).to eq (int)
end

Quando("realizar uma requisicao para excluir uma startup") do
    puts $response1["id"]
    $response = @startup.deleteStartup(@id)
end

Entao("a api ira retornar os dados da exclusao respondendo codigo {int}") do |int|
   
    puts "response code: #{$response.code}"
    #expect($response.message).to eq ("Created")
    puts "response message: #{$response.message}"
    expect($response.code).to eq (int)
end