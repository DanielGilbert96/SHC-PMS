Rails.application.routes.draw do
  devise_for :users
  resources:patients
  resources:records
  root 'patients#index', as: 'home'

  get 'records', to: 'records#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
