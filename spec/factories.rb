require_relative "models/funcionario_model"

FactoryBot.define do
    factory :funcionario, class: FuncionarioModel do 
        employee_name { "Rangel Luiz" }
        employee_salary { "1000" }
        employee_age { "18" }
        profile_image { "" }
    end

    factory :funcionario_nome_invalido, class: FuncionarioModel do 
        employee_name { "" }
        employee_salary { "1000" }
        employee_age { "18" }
        profile_image { "" }
    end

    
end