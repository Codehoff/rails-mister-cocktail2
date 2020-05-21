Rails.application.routes.draw do

  get 'reviews/new'
  resources :cocktails do
    resources :doses, only: [:create]
  end

  resources :doses, only: [ :destroy ]

end
