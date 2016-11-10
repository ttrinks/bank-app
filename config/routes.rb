Rails.application.routes.draw do
  resources :users
  resources :banks
  resources :bankaccounts
  resources :clients do
    resources :bankaccounts do
      member do
        get 'show_balance', :action => :show_balance, :as => 'show_balance'
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
