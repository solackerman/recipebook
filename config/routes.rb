Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes
      resources :steps
      resources :item_locations
      resources :ingredients
      resources :grocery_items
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '*path', to: 'home#index', via: :all
end
