require "sidekiq/web"

Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :announcements
    resources :form_values
    resources :forms
    resources :form_submissions
    resources :form_attributes

    root to: "users#index"
  end

  resources :forms
  resources :form_submissions

  get "/privacy", to: "home#privacy"
  get "/terms", to: "home#terms"
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
