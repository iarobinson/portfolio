Rails.application.routes.draw do
  get '/random_quote' => 'pages#random_quote'
  get '/quick_check'  => 'pages#quick_check'
  get '/calculator'   => 'pages#calculator'
  get '/scratch'      => 'pages#scratch'
  root 'pages#index'
end
