Rails.application.routes.draw do
  root :to => "welcome#index"
  get 'welcome/index'

  resources :lugars
  resources :salas
  resources :auditorios
  resources :salons
  resources :edificios
  resources :cepraes
  resources :reservas
  resources :usuarios
  resources :bienestars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
