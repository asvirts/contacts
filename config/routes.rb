Rails.application.routes.draw do
  resources :contacts
  root 'home#index'

  get "up" => "rails/health#show", as: :rails_health_check
end
