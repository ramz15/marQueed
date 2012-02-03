# class RegistrationsController < Devise::RegistrationsController
# 
#   before_filter :authenticate
# 
#   # def update
#   #   @user = current_user
#   #   user = params[:user]
#   # 
#   #   # make sure user doesn't have a stub password anymore
#   #   # after updating here
#   #   user[:has_stub_password] = false
#   #   if @user.update_attributes(user)
#   #     # successful update, sign the user back in (password changed)
#   #     sign_in(@user, :bypass => true)
#   #     redirect_to logged_in_home_path
#   #   else
#   #     @fluid = false
#   #     render 'home/welcome' and return
#   #   end
#   # end
# 
# end
