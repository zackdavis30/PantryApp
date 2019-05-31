Rails.application.routes.draw do
  resources :categories
  resources :pantries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'pantries/find_by_name_or_category' => 'pantries#find_by_name_or_category'
  root 'pantries#index'

end
