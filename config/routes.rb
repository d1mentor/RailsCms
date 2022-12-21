Rails.application.routes.draw do
  devise_for :users

  scope :development, in_dev_scope: true do
    resources :cutaway_page_versions
    resources :cutaway_pages
    resources :languages
    resources :navs
    resources :footers
    resources :scripts
    resources :styles
    resources :libraries
    get 'dashboard', to: 'development#index'
  end

  scope :bookkeep do 
  
  end  

  scope "/:locale" do
    get 'switch_lang', to: 'cutaway#switch_lang'
    get ':page_link', to: 'cutaway#render_page'
  end  

  root 'cutaway#index'
end
