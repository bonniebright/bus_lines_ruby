BusSystem::Application.routes.draw do
  root :to => 'lines#index'
  resources :stations
  resources :lines
  resources :buses
 end
