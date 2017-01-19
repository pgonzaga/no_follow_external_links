Rails.application.routes.draw do
  mount NoFollowExternalLinks::Engine => "/no_follow_external_links"

  resources :cars, only: %i(index show)

  root 'cars#index'
end
