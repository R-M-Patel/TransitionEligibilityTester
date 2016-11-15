class Search < ApplicationRecord
    
    validates :zipcode, presence: true
    # Validate zip code against all possible zip codes..
    validates :age, presence: true, numericality: {less_than_or_equal_to: 120, only_integer: true}
    validates :income, presence: true
    validates :assetAmount, presence: true
    # Validate income input
    # validates :married, presence: true
    # validates :veteran, presence: true
    # validates :disabled, presence: true
    
end
