Rails.application.routes.draw do
  root to: 'articles#index' #this line changes url of page from default 'index' to 'articles...idk why the name of the string matters/how its used'
  resources :articles do
    resources :comments
  end
  resources :tags #literally have no idea what this line does, but i know it helps establish the route for using the word tags in the app
end
