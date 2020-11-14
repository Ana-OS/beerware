Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bars

  resources :beers do

    member do
      post :drank # use link_to
      post :to_drink
      delete :unlist
    end

    resources :reviews
  end

  resources :reviews, only: :destroy
end
