Rails.application.routes.draw do
  devise_for :users
  resources :users
  get '/rock_paper_scissors' => 'pages#rock_paper_scissors'
  get '/tick_tack_toe'       => 'pages#tick_tack_toe'
  get '/random_quote'        => 'pages#random_quote'
  get '/quick_check'         => 'pages#quick_check'
  get '/jockoclock'          => 'pages#jockoclock'
  get '/calculator'          => 'pages#calculator'
  get '/scratch'             => 'pages#scratch'
  get '/heart'               => 'pages#heart'
  root 'pages#index'
end
