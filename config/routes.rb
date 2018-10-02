Rails.application.routes.draw do
  namespace :api, :path => "" do
    namespace :v1 :path => "" do
      resources :movies
      resources :shows
      get '/search' => 'search#search', :as => 'search'
    end
  end
end
