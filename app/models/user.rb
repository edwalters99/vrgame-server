class User < ApplicationRecord
    validates :firstname, :presence => true, :length => {:within => 2..250}
    validates :lastname, :presence => true
    validates :email, :presence => true, :uniqueness => true
end
