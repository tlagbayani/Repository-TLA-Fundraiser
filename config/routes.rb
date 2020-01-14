Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#index"
  resources :events, only: [:index, :show]
  namespace :administrator do
    resources :events, only: [:new, :create, :show]
  end
end
