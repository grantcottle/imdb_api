Rails.application.routes.draw do
  namespace :api, :path => "" do
    namespace :v1 do
      resources :movie
      resources :show
      get '/search' => 'search#search', :as => 'search'
    end
  end
end
