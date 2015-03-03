Rails.application.routes.draw do

scope '/api' do
  resources :hashtags
  resources :stories
  devise_for :users
  get 'sessions/current' => 'sessions#show'
  post 'hashtags/twitter' => 'hashtags#search_twitter'
end

  root 'ember#loader'
  get '/*path' => 'ember#loader'
end
