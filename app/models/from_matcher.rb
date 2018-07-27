class FromMatcher < ApplicationRecord
   
def compare_forms
    @matches = Owner.find(id)
    if owner.age == locataire.age && owner.sexe == locataire.sexe
        render @matches.all
    end
end

end
