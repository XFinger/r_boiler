
module Overrides

    class RegistrationsController < DeviseTokenAuth::RegistrationsController

    private

        def registration_params
         params.require(:registration).permit(:name)


        end


    end
end