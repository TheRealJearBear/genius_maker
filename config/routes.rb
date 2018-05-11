Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :videos
  resources :nasas, only: [:index]
  resources :pictures
  resources :users
  resources :topics
  resources :meetings
  resources :conversations do
    resources :messages
  end

  namespace :api do
    namespace :v1 do
      resources :videos, only: [:index]
      resources :nasas, only: [:index]
    end
  end

end
