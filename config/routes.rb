Rails.application.routes.draw do
  root "main#test3"
  post 'main/test3' , to:"main#test"
  post 'main/test' , to:"main#test2"
  get 'main/test'
  get 'main/test1'
  get 'main/test3'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end