Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/about'
  root 'home#index'
  resources :tasks do
  member do
    get 'remove_image'
  end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
