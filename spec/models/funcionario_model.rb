class FuncionarioModel
    attr_accessor :employee_name, :employee_salary, :employee_age, :profile_image

    def to_hash
        {
            employee_name: @employee_name,
            employee_salary: @employee_salary,
            employee_age: @employee_age,
            profile_image: @profile_image
        }
    end
end
