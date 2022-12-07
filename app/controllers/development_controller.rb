class DevelopmentController < ApplicationController
  def index
    @pages = CutawayPage.all
    @languages = Language.all
  end 
end
