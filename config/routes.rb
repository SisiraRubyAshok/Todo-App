Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'home/about'
  root 'home#index'
  resources :tasks do
  get :autocomplete_task_todo, :on => :collection
  end
  get '/search' => 'tasks#search', :as => 'search_task'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
