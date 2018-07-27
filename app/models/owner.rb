class Owner < ApplicationRecord
    validates :name, presence:true
    validates :surname, presence:true
    validates :contact, presence:true
    validates :place, presence:true
    validates :owner_type, presence:true
    validates :number, presence:true
    validates :age, presence:true
    validates :other, presence:true
    validates :rent, presence:true
    validates :lead, presence:true
    validates :bail, presence:true
    validates :comments, presence:true

    
end

