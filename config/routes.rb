Rails.application.routes.draw do

  root "api/v1/interviews#index"
  namespace :api do
    namespace :v1 do
      resources :reviews
      resources :interviews
      resources :users
    end
  end
end
