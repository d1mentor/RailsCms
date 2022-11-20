class BookkeepController < ApplicationController
  before_action :check_user_permissions!
  
  def index
  end

  private

  def check_user_permissions!
    if !user_signed_in? || !current_user.bookkeeper
      redirect_to root_path
    end
  end  
end
