Rails.application.routes.draw do
  resources :questions
  resources :military_rank_tests
  devise_for :users
  resources :users

  get '/roulette_wheel_consecutive_count' => 'pages#roulette_wheel_consecutive_count'
  get '/rock_paper_scissors'              => 'pages#rock_paper_scissors'
  get '/tick_tack_toe'                    => 'pages#tick_tack_toe'
  get '/random_quote'                     => 'pages#random_quote'
  get '/quick_check'                      => 'pages#quick_check'
  get '/jockoclock'                       => 'pages#jockoclock'
  get '/calculator'                       => 'pages#calculator'
  get '/scratch'                          => 'pages#scratch'
  get '/heart'                            => 'pages#heart'
  root 'pages#index'
end
