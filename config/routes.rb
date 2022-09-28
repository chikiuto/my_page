Rails.application.routes.draw do
  get 'posts/index'
  get '/' => 'home#top'
  get 'profile' => 'home#profile'
  
  get 'comment' => 'posts#index'
end
