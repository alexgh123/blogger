Rails.application.routes.draw do
  root to: 'articles#index' #this line changes url of page from default 'index' to 'articles...idk why the name of the string matters/how its used'
  resources :articles
end
