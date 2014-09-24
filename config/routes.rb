Quickplace::Application.routes.draw do



  get 'sitemap.xml', :to => 'sitemap#index', :defaults => { :format => 'xml' }

  root to: 'quickplace#home'
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  match '/users/auth/facebook' => 'devise/omniauth_callbacks#passthru',  via: 'get'
  match 'auth/:provider/callback', to: 'sessions#create',   via: 'get'
  match 'auth/failure', to: redirect('/'),                  via: 'get'
  match '/users/sign_out',    to: 'devise/sessions#destroy',    via: 'post'
  match '/users/seleccionestados',    to: 'users#editestados',    via: 'get'
  match '/users/seleccionactividades',    to: 'users#editactividades',    via: 'get'
  match '/users/seleccionlugares',    to: 'users#editlugares',    via: 'get'
  match '/users/seleccionusuarios',    to: 'users#editusuarios',    via: 'get'
  match '/index',    to: 'quickplace#index',    via: 'get'
  match '/ayuda',    to: 'info#ayuda',    via: 'get'
  match '/places',    to: 'quickplace#places',    via: 'get'
  match '/location',    to: 'instrucciones#location',    via: 'get'
  match '/zwopa',    to: 'info#zwopa',    via: 'get'
  match '/terminos',    to: 'info#terminos',    via: 'get'
  match '/promocionate',    to: 'info#promocionate',    via: 'get'
  match '/nosotros',   to: 'info#nosotros',   via: 'get'
  match '/contacto', to: 'info#contacto', via: 'get'
  match '/instrucciones', to: 'quickplace#instrucciones', via: 'get'
  match '/micrositios', to: 'micrositios#index', via: 'get'
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
  resources :actividades do
    member do
      get :following, :followers
    end
  end
  resources :estados do
    member do
      get :following, :followers
    end
  end
  resources :actividadespadre do
    member do
      get :following, :followers
    end
  end

  resources :categorias do
    member do
      get :following, :followers
    end
  end

  resources :users
  resources :actividades
  resources :actividades, :as => :actividad
  resources :actividadespadre
  resources :actividadespadre, :as => :actividadpadre
  resources :estados
  resources :categorias
  resources :eventos
  resources :locations
  resources :micrositios
  resources :reservations
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :relationeventos, only: [:create, :destroy]
  resources :relationcategorias, only: [:create, :destroy]
  resources :relationmicrositios, only: [:create, :destroy]
  resources :relationestados, only: [:create, :destroy]
  resources :relationactividades, only: [:create, :destroy]
  resources :relationactividadespadre, only: [:create, :destroy]

end
