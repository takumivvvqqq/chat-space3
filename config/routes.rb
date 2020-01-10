Rails.application.routes.draw do
  devise_for :users
  # root "messages#index"
  root 'groups#index'
  resources :users, only: [:index,:edit, :update]
  resources :groups, only: [:index,:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
    namespace :api do
      resources :messages, only: :index, defaults: { format: 'json' }
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end
end
