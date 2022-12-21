class CutawayController < ApplicationController
  def index
    #Тут определить локаль(Или дефолтную взять), и редирект на нужную индекс версию
  end

  def about_us
  end

  def switch_lang
      page_version = CutawayPageVersion.find_by(route_link: request.referer.split('/').last) #Откуда
      kuda = CutawayPageVersion.find_by(cutaway_page_id: page_version.cutaway_page_id, language_id: Language.find_by(code: params[:locale]))
      redirect_to "/#{params[:locale]}/#{kuda.route_link}" #Редирект
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
