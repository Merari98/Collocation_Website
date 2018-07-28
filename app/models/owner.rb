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

    after_create :compare_forms

    def compare_forms
    locataires = Locataire.all
        locataires.each do |locataire|
            if locataire.age == age && locataire.sexe == sexe
             FromMatcher.create(owner_id:id,locataires_id: locataire.id)
            end
        end
    end


    
end

