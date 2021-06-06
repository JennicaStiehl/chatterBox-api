Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :rooms, only: [:create, :index] do
        resources :messages
      end

      resources :users, only: [:create] do
        resources :messages, only: [:create]
      end

    end
  end
end
