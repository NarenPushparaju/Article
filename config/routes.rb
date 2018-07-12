Rails.application.routes.draw do
  resources :articles
#   get 'articles/new' =>'articles#new'
#   get 'articles/index' =>'articles#index'
# get 'articles/index/:title' => 'articles#show'
#   post 'articles/new' => 'articles#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
