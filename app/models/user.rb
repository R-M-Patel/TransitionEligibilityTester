class User < ApplicationRecord

    before_save {email.downcase!}
    validates :first_name, presence: true
    validates :last_name, presence: true
    has_secure_password
    validates :password, presence: true, length: {minimum: 6}, on: :create

end
