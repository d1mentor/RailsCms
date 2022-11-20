Rails.application.routes.draw do
  devise_for :users

  get 'bookkeep/index'
  get 'development/index'
  get 'cutaway/index'

  root 'cutaway#index'
end
