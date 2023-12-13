Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "forms#index"

  resources :forms do
    member do
      get 'submissions' => "form_submissions#new", as: :new_submission
    end
  end
  resources :form_submissions, except: [:new]
end
