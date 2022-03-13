
describe "Dado que quero cadastrar um novo funcionário" do

    context "quando informo os dados do funcionário" do
        let(:result) { ApiFuncionario.create(build(:funcionario).to_hash) }

        it "então deve retornar 200 e mensagem de sucesso" do
            expect(result.response.code).to eql "200"
            expect(result.parsed_response["message"]).to eql "Successfully! Record has been added."
        end
    end
end

describe "Dado que eu desejo buscar por um determinado funcionário" do
    
    context "quando faço a busca pelo ID desse funcionário" do
        let(:result) { ApiFuncionario.busca_funcionario("1") }

        it "então deve retornar o status 200 e o funcionário pesquisado" do
            expect(result.response.code).to eql "200"
            expect(result.parsed_response["data"]["employee_name"]).to eq "Tiger Nixon"
        end
    end
end 


