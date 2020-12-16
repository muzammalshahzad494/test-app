Rails.application.routes.draw do

  resources :articles
  resources :blogs
root 'welcome#home'
get 'about/', to: 'welcome#about'


end
