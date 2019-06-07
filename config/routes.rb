Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'drinks#index'

  resources :home, only: [:index] do
    collection do

    end
  end

  get '/advanced-filter', to: 'home#advanced_filter', as: 'advanced_filter'
end
