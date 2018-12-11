Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'homes#index'
    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :videos, only: [:show, :index]
    resources :nasas, only: [:index]
    resources :pictures, except: [:edit, :update, :destroy]
    resources :users, only: [:show, :destroy, :index]
    resources :topics, only: [:show, :index]
    resources :meetings, except: [:edit, :update, :destroy]
    resources :weathers, only: [:index]
    resources :conversations, only: [:create, :index] do
      resources :messages, only: [:new, :create, :index]
    end

    namespace :api do
      namespace :v1 do
        resources :videos, only: [:index]
        resources :nasas, only: [:index]
      end
    end

  end
end
