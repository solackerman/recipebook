Rails.application.routes.draw do
  resources :recipes
  resources :steps
  resources :item_locations
  resources :ingredients
  resources :grocery_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
end
