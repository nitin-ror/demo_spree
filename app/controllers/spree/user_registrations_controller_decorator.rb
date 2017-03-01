Spree::UserRegistrationsController.class_eval do

  private
    
    def spree_user_params
      params.require(:spree_user).permit(:email, :password, :address)
    end
end