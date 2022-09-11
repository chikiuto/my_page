Rails.application.routes.draw do
  get '/' => 'home#top'
  get 'profile' => 'home#profile'
  get 'history' => 'home#history'
  get 'comment' => 'home#comment'
end
