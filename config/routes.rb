Rails.application.routes.draw do
  resources :strategies
  # resources :strategies
  # resources :strategies
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

  post '/addFollowedAsset/', to: 'followed_assets#addNew'
  post '/removeFollowedAsset/', to: 'followed_assets#remove'

  post '/createSynthAsset/', to: 'synthetic_assets#addNew'
  post '/removeSynthAsset/', to: 'synthetic_assets#remove' 

  get '/syntheticAssets/:uid', to: 'synthetic_assets#getForUser'
  get '/syntheticLegs/:assetId', to: 'synthetic_assets#getLegsForAsset'

  post '/createStrategy/', to: 'strategies#addNew'
  get '/getStrategiesForUser/:user_id', to: 'strategies#getStrategiesForUser'
  post '/updateStrategyThreshold/', to: 'strategies#updateStrategyThreshold'
  post '/removeStrategy/', to: 'strategies#removeStrategy'
end
