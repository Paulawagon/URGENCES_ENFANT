Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profil", to: "pages#profil"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :children, only: [:create, :new, :destroy, :update, :edit] do
    resources :analyses, only: [:create, :new, :destroy]
  end
  get "/direction", to: "analyses#direction"

  get "diseases/behavior/id", to: "diseases#behavior"
  get "diseases/need_to_know/id", to: "diseases#need_know"
  get "diseases/when_consult/id", to: "diseases#consult"
  get "diseases/prevention/id", to: "diseases#prevention"

  resources :diseases
end
