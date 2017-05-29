Rails.application.routes.draw do
  resources :sala_de_conferencia
  resources :auditorios
  resources :sala_de_computos
  resources :salons
  resources :permanentes
  resources :puntuals
  devise_for :users
  resources :administradors
  resources :solicituds
  resources :espacios
  resources :edificios
  resources :usuarios
  root :to => "welcome#index"
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
