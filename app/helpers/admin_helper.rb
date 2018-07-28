module AdminHelper
    def match_locataires(match)
        Owner.find(match. locataires_id)
    end
    def match_owner(match)
        Owner.find(match.owner_id)
    end
end
