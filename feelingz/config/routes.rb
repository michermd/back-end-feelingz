Rails.application.routes.draw do
  # resources :users
  # resources :mood_posts
  namespace :api do
    namespace :v1 do
      resources :users, :mood_posts
          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
