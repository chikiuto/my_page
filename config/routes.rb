Rails.application.routes.draw do
  root 'welcome#index'
  get '/' => 'home#top'
  get 'profile' => 'home#profile'

  get 'comment' => 'posts#index'
  get 'comment/new' => 'posts#new'
  post 'comment/create' => 'posts#create'

  get 'comment/:id/edit' => 'posts#edit'
  post 'comment/:id/update' => 'posts#update'
  post 'comment/:id/destroy' => 'posts#destroy'

  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'
end
