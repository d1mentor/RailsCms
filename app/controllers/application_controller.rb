class ApplicationController < ActionController::Base
  before_action :check_security!

  private

  def check_security!
    if controller_name == 'bookkeep' 
        redirect_to root_path if !user_signed_in? || !current_user.bookkeeper
    elsif controller_name == 'development'    
        redirect_to root_path if !user_signed_in? || !current_user.developer
    end    
  end  
end
