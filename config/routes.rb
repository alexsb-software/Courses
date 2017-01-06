Rails.application.routes.draw do
    root 'visitors#index'
    get 'search' => 'visitors#search'

    resources :courses, only: [:show]

    devise_for :users, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)
end
