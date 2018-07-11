Rails.application.routes.draw do
  get 'article/new'
  get 'article/show'
get 'article/show/:title' => 'article#set'
  post 'article/new' => 'article#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
