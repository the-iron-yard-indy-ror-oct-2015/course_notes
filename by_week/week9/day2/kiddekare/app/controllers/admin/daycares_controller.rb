module Admin
  class DaycaresController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   puts "Hi ya'll"
    #   puts "I'm still here"
    #   if current_user.role == "daycare_administrator"
    #     @resources = current_user.daycares.all.page(params[:page]).per(10)
    #   else
    #     Rails.logger.info "ROLE: #{current_user.role}"
    #     @resources = Daycare.all.page(params[:page]).per(10)
    #   end
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Daycare.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
