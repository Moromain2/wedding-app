Rails.application.routes.draw do
  resources :liste_de_mariages
  get 'liste_de_mariages/new'
  get 'liste_de_mariages/edit'
  get 'liste_de_mariages/show'
  get 'liste_de_mariages/index'

  resources :contacts
  get 'contacts/new'
  get 'contacts/edit'
  get 'contacts/show'
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
