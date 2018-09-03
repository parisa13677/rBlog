Rails.application.routes.draw do
  get 'contact' => 'contacts#new'
  get 'contacts/create'
  get 'about' => 'about#index'
  namespace :admin do
    get 'sessions/new'
    get 'sessions/create'
  end
  namespace :admin do
    get 'users/index'
    get 'users/show'
    get 'users/new'
    get 'users/edit'
    get 'users/create'
    get 'users/update'
    get 'users/destroy'
  end
  namespace :admin do
    get 'comments/destroy'
  end
  get 'comment/new'
  namespace :admin do
    get 'categories/new'
    get 'categories/create'
    get 'categories/edit'
    get 'categories/update'
    get 'categories/destroy'
    get 'categories/index'
    get 'categories/show'
  end
  get 'categories/show'
  namespace :admin do
    get 'posts/new'
    get 'posts/create'
    get 'posts/edit'
    get 'posts/update'
    get 'posts/destroy'
    get 'posts/index'
    get 'posts/show'
  end
  get 'posts/index'
  get 'posts/show'

  resources :categories, :posts, :comments
  resources "contacts", only: [:new, :create ]
  namespace :admin do
    resources :categories, :posts, :comments
  end

  root 'posts#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

