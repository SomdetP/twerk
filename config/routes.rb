Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :twerks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "twerks#index"
end