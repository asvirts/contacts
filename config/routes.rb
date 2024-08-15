Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  resources :contacts
  root 'home#index'

  get "up" => "rails/health#show", as: :rails_health_check
end
