Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'homes#index'
    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :videos
    resources :nasas, only: [:index]
    resources :pictures
    resources :users
    resources :topics
    resources :meetings
    resources :weathers
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
end
