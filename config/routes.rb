Rails.application.routes.draw do
 resources :horticultures
  resources :agricultures
  resources :welcome
  root to: 'welcome#home'
 
 
end
