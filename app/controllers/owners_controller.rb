class OwnersController < ApplicationController
	def index
        @owners = Owner.all
        @owner  = Owner.new
    end

    def create
    	@Owners = Owner.create(owner_params)
    	redirect_to owners_path
    end

    def owner_params
    	params.require(:owner).permit(:name, :surname, :sexe, :contact, :place, :owner_type, :number, :age, :other, :rent, :lead, :bail, :comments)
    end
end
