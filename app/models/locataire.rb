class Locataire < ApplicationRecord
    validates :name, presence:true
    validates :surname, presence:true
    validates :contact, presence:true
    validates :place, presence:true
    validates :sexe, presence:true
    validates :age, presence:true
    validates :other, presence:true
    validates :loyer, presence:true
end
