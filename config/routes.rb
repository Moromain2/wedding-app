Rails.application.routes.draw do
  resources :evenements
  get 'evenements/new'
  get 'evenements/edit'
  get 'evenements/show'
  get 'evenements/index'

  resources :liste_de_mariages
  get 'liste_de_mariages/new'
  get 'liste_de_mariages/edit'
  get 'liste_de_mariages/index'

  resources :contacts
  get 'contacts/new'
  get 'contacts/edit'
  get 'contacts/index'

  resources :hebergements
  get 'hebergements/new'
  get 'hebergements/edit'
  get 'hebergements/show'
  get 'hebergements/index'

  resources :posts
  get 'posts/new'
  get 'posts/edit'
  get 'posts/show'
  get 'posts/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
