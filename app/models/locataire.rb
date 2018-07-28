class Locataire < ApplicationRecord
    validates :name, presence:true
    validates :surname, presence:true
    validates :contact, presence:true
    validates :place, presence:true
    validates :sexe, presence:true
    validates :age, presence:true
    validates :other, presence:true
    validates :loyer, presence:true
    
    after_create :compare_forms
    
        def compare_forms

        owners = Owner.all
            owners.each do |owner|
                if owner.age == age && owner.sexe == sexe
                 FromMatcher.create(locataires_id:id,owner_id: owner.id)
                end
            end
        end

end


