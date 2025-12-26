Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  devise_for :users

  namespace :admin do
    root to: "dashboards#index"
    resource :profile, only: [ :update ]
    resources :experiences
    resources :degrees do
      resources :courses
    end
    resources :skills
    resources :projects
  end

  root "pages#index"
end
