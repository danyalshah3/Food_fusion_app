class User < ApplicationRecord
    validates :username, :email, uniqueness: true
    validates :username, :email, presence: true
    has_secure_password
    
    validate :password_requirements_are_met

   def self.find_or_create_from_google(user_info)
        find_or_create_by(email: user_info[:email]) do |user|
            user.username = user_info[:name]
            user.password = SecureRandom.hex
        end
    end

    private 

    def password_requirements_are_met
        rules = {
          " must contain at least one lowercase letter"  => /[a-z]+/,
          " must contain at least one uppercase letter"  => /[A-Z]+/,
          " must contain at least one digit"             => /\d+/,
          " must contain at least one special character" => /[^A-Za-z0-9]+/
        }
      
        rules.each do |message, regex|
          errors.add( :password, message ) unless password.match( regex )
        end
      end
    
end
