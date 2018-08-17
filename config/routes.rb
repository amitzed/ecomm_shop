Rails.application.routes.draw do
  devise_for :users
  # below is the home page
  root 'store#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
