class Dog < ApplicationRecord
    has_many :employees

# def employee_names
#     self.employees.each do |employee|
#         employee.first_name
#     end
# end

end
