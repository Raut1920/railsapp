Rails.application.routes.draw do
  resources :flowers
  resources :plantations
  resources :vegetables
  resources :fruitcrops
 resources :horticultures
  resources :agricultures
  resources :welcome
  root to: 'welcome#home'
 
 
end
