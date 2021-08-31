Rails.application.routes.draw do
  resources :payers
  post '/transaction', to: 'payers#spend_points'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
