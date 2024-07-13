Rails.application.routes.draw do
  get 'challenges_done/new'
  get 'challenges_done/create'
  get 'challenges_done/index'
  get 'challenges_done/show'
  get 'challenges_done/edit'
  get 'challenges_done/update'
  get 'challenges_done/destroy'
  get 'rewards_given/new'
  get 'rewards_given/create'
  get 'rewards_given/index'
  get 'rewards_given/destroy'
  get 'rewards/new'
  get 'rewards/create'
  get 'rewards/index'
  get 'rewards/show'
  get 'rewards/edit'
  get 'rewards/update'
  get 'rewards/destroy'
  get 'challenges/new'
  get 'challenges/create'
  get 'challenges/index'
  get 'challenges/show'
  get 'challenges/edit'
  get 'challenges/update'
  get 'challenges/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
