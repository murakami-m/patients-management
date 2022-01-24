Rails.application.routes.draw do
  root to: "patients#index"
  resources :patients, only: [:index, :new, :create, :show, :edit, :update]
end