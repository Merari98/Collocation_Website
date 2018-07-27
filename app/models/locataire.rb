class Locataire < ApplicationRecord
    validates :name, presence:true
    validates :surname, presence:true
    validates :contact, presence:true
    validates :place, presence:true
    validates :sexe, presence:true
    validates :age, presence:true
    validates :other, presence:true
    validates :loyer, presence:true
    
    def compare_forms
        @matches= Owner.find(id)
        if owner.age == locataire.age && owner.sexe == locataire.sexe
        render @matches.all
        end
    end
end


