Rails.application.routes.draw do
  resources :battles
  resources :teams
  resources :users
  resources :superheros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
