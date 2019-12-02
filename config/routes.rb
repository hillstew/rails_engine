Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      namespace :merchants do
        get '/find', to: 'filter#find'
        get '/find_all', to: 'filter#find_all'
        get '/random', to: 'filter#random'
        get '/:id/items', to: 'items#index'
        get '/:id/invoices', to: 'invoices#index'
      end
      namespace :customers do
        get '/find', to: 'filter#find'
        get '/find_all', to: 'filter#find_all'
        get '/random', to: 'filter#random'
        get '/:id/invoices', to: 'invoices#index'
        get '/:id/transactions', to: 'transactions#index'
      end
      namespace :items do
        get '/find', to: 'filter#find'
        get '/find_all', to: 'filter#find_all'
        get '/random', to: 'filter#random'
        get '/:id/invoice_items', to: 'invoice_items#index'
        get '/:id/merchant', to: 'merchants#show'
      end
      namespace :invoices do
        get '/find', to: 'filter#find'
        get '/find_all', to: 'filter#find_all'
        get '/random', to: 'filter#random'
        get '/:id/transactions', to: 'transactions#index'
        get '/:id/items', to: 'items#index'
        get '/:id/invoice_items', to: 'invoice_items#index'
        get '/:id/customer', to: 'customers#show'
        get '/:id/merchant', to: 'merchants#show'
      end
      namespace :transactions do
        get '/find', to: 'filter#find'
        get '/find_all', to: 'filter#find_all'
        get '/random', to: 'filter#random'
        get '/:id/invoice', to: 'invoices#show'
      end
      namespace :invoice_items do
        get '/find', to: 'filter#find'
        get '/find_all', to: 'filter#find_all'
        get '/random', to: 'filter#random'
        get '/:id/item', to: 'items#show'
        get '/:id/invoice', to: 'invoices#show'
      end

      resources :merchants, only: [:index, :show]
      resources :customers, only: [:index, :show]
      resources :items, only: [:index, :show]
      resources :invoices, only: [:index, :show]
      resources :transactions, only: [:index, :show]
      resources :invoice_items, only: [:index, :show]
    end
  end
end
