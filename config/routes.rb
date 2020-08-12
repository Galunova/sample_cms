Rails.application.routes.draw do
  devise_for :admins
  namespace :admin do
  	resources :templates
  	resources :pages
  end
end
