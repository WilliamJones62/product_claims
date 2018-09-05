Rails.application.routes.draw do
  get 'product_claims/hide'
  resources :product_claims
  devise_for :users, controllers: { registrations: "users/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'product_claims#index'
end
