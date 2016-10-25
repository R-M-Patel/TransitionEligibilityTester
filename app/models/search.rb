class Search < ApplicationRecord
    
    validates :zipcode, presence: true
    # Validate zip code against all possible zip codes..
    validates :age, presence: true
    validates :income, presence: true
    # Validate income input
    validates :married, presence: true
    validates :veteran, presence: true
    validates :disabled, presence: true
    
end
