Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profil", to: "pages#profil"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :childs, only: [:create, :new, :destroy, :update, :edit] do
     resources :analyses, only: [:create, :new] 
  end
  get "/direction", to: 'analyses#direction'
  resources :diseases
 
end
