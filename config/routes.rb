Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'drinks#index'

  post '/advanced-filter', to: 'drinks#advanced_filter', as: 'advanced_filter'
  get '/advanced-filter', to: 'drinks#advanced_filter'

  post '/filter', to: 'drinks#simple_filter', as: 'simple_filter'
  get '/filter', to: 'drinks#simple_filter'
end
