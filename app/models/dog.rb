class Dog < ApplicationRecord
    has_many :employees, dependent: :destroy

    validates_presence_of :name, :breed, :age

    validates :name, uniqueness: {message: "Name is already in use. Please choose a different name." }


    def name_starts_with_vowel
        self.name.downcase.start_with?("a", "e", "i", "o", "u")  
    end

    def breed_starts_with_vowel
        self.breed.downcase.start_with?("a", "e", "i", "o", "u")  
    end

    def self.sort_by_employee_desc
        ascending = self.all.sort_by{ |dog| dog.employees.count }
        ascending.reverse
    end

end
