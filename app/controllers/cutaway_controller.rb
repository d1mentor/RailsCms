class CutawayController < ApplicationController
  def index
  end

  def about_us
  end
  
  def render_page
    @url = params[:page_link]

    CutawayPage.all.each do |page|
      page.versions.each do |page_version|
        if page_version.route_link == @url
          render 'cutaway/page', :locals => {:page => page_version, :lang => params[:locale]} and return
        end  
      end  
    end  
  end  
end
