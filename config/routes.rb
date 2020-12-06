Rails.application.routes.draw do
  #get 'top' => 'books#top'
  root to: 'books#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
end
