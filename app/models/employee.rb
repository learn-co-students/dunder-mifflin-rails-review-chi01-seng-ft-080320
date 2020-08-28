class Employee < ApplicationRecord
    belongs_to :dog

    validates_presence_of :first_name, :last_name, :alias, :title, :office, :img_url

    validates :alias, uniqueness: { message: "Alias is already in use. Please choose a different alias." }
    validates :title, uniqueness: { message: "Title is already in use. Please choose a different title." }


    def name 
        "#{self.first_name} #{self.last_name}"
    end 

    def title_starts_with_vowel
        self.title.downcase.start_with?("a", "e", "i", "o", "u")  
    end
    
end
