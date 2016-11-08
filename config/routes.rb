Rails.application.routes.draw do
  resources :bankaccounts do
    member do
      get 'show_balance', :action => :show_balance, :as => 'show_balance'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
