Rails.application.routes.draw do
  resources :search_suggestions
  devise_for :users
  get 'home/index'
  get 'home/about'
  root 'home#index'
  resources :tasks
  get '/search' => 'tasks#search', :as => 'search_task'
  get '/autocomplete' => 'tasks#autocomplete', :as => 'autocomplete_task'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
