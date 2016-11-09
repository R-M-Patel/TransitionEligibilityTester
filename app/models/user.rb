class User < ApplicationRecord
<<<<<<< HEAD
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :password, presence: true
	validates :email, presence: true
=======
    before_save {email.downcase!}
    validates :first_name, presence: true
    validates :last_name, presence: true
    has_secure_password
    validates :password, presence: true, length: {minimum: 6}
>>>>>>> admin-login
end
