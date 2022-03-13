class ApiFuncionario
    include HTTParty
    base_uri "http://dummy.restapiexample.com/api/v1"
    headers "Content-Type" => "application/json"

    def self.create(funcionario)
        post("/create", body: funcionario.to_json)
    end


    def self.busca_funcionario(funcionario_id)
        get("/employee/#{funcionario_id}")
    end
end