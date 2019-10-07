Rails.application.routes.draw do

  root "api/v1/interviews#index"
  namespace :api do
    namespace :v1 do
      resources :reviews
      resources :interviews
      resources :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
