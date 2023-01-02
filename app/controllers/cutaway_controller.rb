class CutawayController < ApplicationController
  def index
    redirect_to '/ru/index-path'
  end

  def switch_lang
      page_version = CutawayPageVersion.find_by(route_link: request.referer.split('/').last) #Откуда
      kuda = CutawayPageVersion.find_by(cutaway_page_id: page_version.cutaway_page_id, language_id: Language.find_by(code: params[:locale]))
      redirect_to "/#{params[:locale]}/#{kuda.route_link}" #Редирект
  end
  
  def render_page
    @url = params[:page_link]

    if @url == 'index-path'
      page_version = CutawayPage.where(index: true).first.versions.find_by(language_id: Language.where(code: params[:locale]).first.id)
      if page_version
        redirect_to "/#{params[:locale]}/#{page_version.route_link}" and return
      else 
        page_version = CutawayPage.where(index: true).first.versions.first
        redirect_to "/#{params[:locale]}/#{page_version.route_link}" and return
      end 
    end

    CutawayPage.all.each do |page|
      page.versions.each do |page_version|
        if page_version.route_link == @url
          render 'cutaway/page', :locals => {:page => page_version, :lang => params[:locale]} and return
        end  
      end  
    end  
  end  
end
