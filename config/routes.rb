Rails.application.routes.draw do
  get '/' => 'home#top'
  get 'profile' => 'home#profile'
  get 'comment' => 'home#comment'
end
