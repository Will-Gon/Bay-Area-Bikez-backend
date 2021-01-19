Rails.application.routes.draw do
  resources :attendances
  resources :likes
  resources :clubs
  resources :places
  resources :bikes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
