Rails.application.routes.draw do
  namespace :api, :path => "/api" do
    namespace :v1 do
      resources :movies
      resources :shows
      get '/search' => 'search#search', :as => 'search'
    end
  end
end
