Rails.application.routes.draw do
  # Authentication
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'auth/signout', to: 'sessions#destroy', as: 'signout'

  get 'shopping-list', to: 'shopping#index', as: 'shopping_list'

  root to: 'welcome#index'
end
