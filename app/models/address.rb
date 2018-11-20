class Address < ApplicationRecord
    has_many :reviews
    validates :name, presence: true, length: { minimum: 2 }
    validates :Phone_Number, presence: true, length: { minimum: 10 }
    validates :email, presence: true, length: { minimum: 6 }
    validates :address, presence: true, length: { minimum: 6 }
end
