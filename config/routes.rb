require 'sidekiq/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  resources :search_suggestions
  devise_for :users
  get 'home/index'
  get 'home/about'
  root 'home#index'
  resources :tasks
  get '/search' => 'tasks#search', :as => 'search_task'
  get '/pending' => 'tasks#pending', :as => 'pending_task'
  get '/completed' => 'tasks#completed', :as => 'completed_task'
  get '/autocomplete' => 'tasks#autocomplete', :as => 'autocomplete_task'
  get '/expired' => 'tasks#expired', :as => 'expired_task'
  get '/todaylist' => 'tasks#todaylist', :as => 'todaylist_task'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
