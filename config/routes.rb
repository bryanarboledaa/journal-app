Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'categories#index'
  # get 'categories' => 'categories#index'
  # get 'categories/new' => 'categories#new'
  # get 'categories/:id' => 'categories#show', as: 'show_category'
  # post 'categories' => 'categories#create', as: 'create_category'
  # get 'categories/:id/edit' => 'categories#edit', as: 'edit_category'
  # put 'categories/:id' => 'categories#update', as: 'update_category'
  # delete 'categories/:id' => 'categories#delete', as: 'delete_category'
  # delete 'categories/:category_id/tasks/:id' => 'tasks#delete', as: 'delete_category_task'


  resources :categories do
    resources :tasks
  end
  
  root 'categories#index'

  namespace :api do
    get '/creator-roles' => 'creator_roles#index'
    get '/creators' => 'creators#index'
    get '/developers' => 'developers#index'
    get '/games' => 'games#index'
    get '/genres' => 'genres#index'
    get '/platforms' => 'platforms#index'
    get '/publishers' => 'publishers#index'
  end

end
