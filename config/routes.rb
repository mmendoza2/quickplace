Quickplace::Application.routes.draw do



  root to: 'home#home'
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  match '/users/auth/facebook' => 'devise/omniauth_callbacks#passthru',  via: 'get'
  match 'auth/:provider/callback', to: 'sessions#create',   via: 'get'
  match 'auth/failure', to: redirect('/'),                  via: 'get'
  match '/users/sign_out',    to: 'devise/sessions#destroy',    via: 'post'
  match '/places',    to: 'quickplace#places',    via: 'get'
  match '/terms',    to: 'info#terms',    via: 'get'
  match '/merchantize',    to: 'info#promocionate',    via: 'get'
  match '/aboutus',   to: 'info#nosotros',   via: 'get'
  match '/contact', to: 'info#contacto', via: 'get'
  match '/micrositios', to: 'micrositios#index', via: 'get'




  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :eventos do
    member do
      get :following, :followers
    end
  end
  resources :micrositios do
    resources :actividades
    member do
      get :following, :followers
    end
  end

  resources :locations do
    resources :actividades

  end



  resources :users
  resources :actividades
  resources :micrositios
  resources :reservations
  resources :locations
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :relationeventos, only: [:create, :destroy]
  resources :relationmicrositios, only: [:create, :destroy]

end
