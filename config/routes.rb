Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :new, :index, :show, :create, :destroy ] do
    resources :doses, only: [ :new, :index, :show, :create, :delete ]
  end
end
