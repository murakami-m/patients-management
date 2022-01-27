Rails.application.routes.draw do
  root to: "patients#index"
  resources :patients do
    resources :accept_adjustments, only: :show
  end
end