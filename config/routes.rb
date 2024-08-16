Rails.application.routes.draw do
  devise_for :users
  resources :contacts
  
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  
  root 'contacts#index'

  get "up" => "rails/health#show", as: :rails_health_check
end
