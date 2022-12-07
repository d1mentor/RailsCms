Rails.application.routes.draw do
  resources :navs
  resources :footers
  resources :scripts
  resources :styles
  devise_for :users

  scope :development do
    resources :cutaway_page_versions
    resources :cutaway_pages
    resources :languages
    get 'dashboard', to: 'development#index'
  end

  scope :bookkeep do 
  
  end  

  scope "/:locale" do
    get ':page_link', to: 'cutaway#render_page'
  end  

  root 'cutaway#index'
end
