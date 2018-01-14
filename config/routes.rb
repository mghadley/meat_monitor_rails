Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :chambers, only: [:show, :update]
    end
  end

  root 'chambers#index'
  resources :chambers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
