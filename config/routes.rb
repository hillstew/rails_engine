Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      namespace :merchants do
        get '/find', to: 'filter#find'
        get '/find_all', to: 'filter#find_all'
      end

      resources :merchants, only: [:index, :show, :find]
    end
  end
end
