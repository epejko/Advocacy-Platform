class User < ActiveRecord::Base
    #association to task db
    has_many :tasks
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    #for uniqueness validation
    before_save { self.email = email.downcase }
    
    validates :username, presence: true
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                                      uniqueness: { case_sensitive: false }
    #validates :password, presence: true
    
    has_secure_password
end
