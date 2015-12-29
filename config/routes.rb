Rails.application.routes.draw do
  # Authentication
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'auth/signout', to: 'sessions#destroy', as: 'signout'

  # Shopping List
  get 'shopping-list', to: 'shopping#index', as: 'shopping_list'
  get 'shopping-list/add-new', to: 'shopping#create', as: 'add_new_list'

  root to: 'welcome#index'
end
