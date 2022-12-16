Rails.application.routes.draw do
  # resources :followed_assets
  # resources :synth_legs
  # resources :exch_assets
  # resources :synthetic_assets
  # resources :trades
  # resources :exchanges
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/followedAssets/:uid', to: 'followed_assets#getAssetsForUser'
  get '/allExchAssets', to: 'exch_assets#getAllAssets'

end
