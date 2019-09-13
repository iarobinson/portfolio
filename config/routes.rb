Rails.application.routes.draw do
  root 'pages#index'
  get '/quick_check' => 'pages#quick_check'
  get '/scratch' => 'pages#scratch'
  get '/calculator' => 'pages#calculator'
end
