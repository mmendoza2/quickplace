Quickplace::Application.routes.draw do



  get 'sitemap.xml', :to => 'sitemap#index', :defaults => { :format => 'xml' }

  root to: 'quickplace#home'
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  match '/users/auth/facebook' => 'devise/omniauth_callbacks#passthru',  via: 'get'
  match 'auth/:provider/callback', to: 'sessions#create',   via: 'get'
  match 'auth/failure', to: redirect('/'),                  via: 'get'
  match '/users/sign_out',    to: 'devise/sessions#destroy',    via: 'post'
  match '/places',    to: 'quickplace#places',    via: 'get'
  match '/location',    to: 'instrucciones#location',    via: 'get'
  match '/actividades/nightclubs', to: 'actividades#show', defaults: {:id => '1'}, via: 'get'
  match '/actividades/bars', to: 'actividades#show', defaults: {:id => '2'}, via: 'get'
  match '/actividades/restaurants', to: 'actividades#show', defaults: {:id => '3'}, via: 'get'


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
    member do
      get :following, :followers
    end
  end


  resources :users
  resources :micrositios
  resources :reservations
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :relationeventos, only: [:create, :destroy]
  resources :relationmicrositios, only: [:create, :destroy]

end
