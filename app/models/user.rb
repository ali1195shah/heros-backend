class User < ApplicationRecord
    has_secure_password

    has_many :teams

    validates_presence_of :username
    validates_uniqueness_of :username, :case_sensitive => false
end
