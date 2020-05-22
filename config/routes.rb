Rails.application.routes.draw do

  get root to: "cocktails#index"
  
  resources :cocktails do
    resources :doses, only: [:create]
    resources :reviews, only: [ :new, :create ]

  end

  resources :doses, only: [ :destroy ]

end
