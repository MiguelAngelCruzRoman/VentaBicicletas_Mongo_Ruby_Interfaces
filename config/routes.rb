Rails.application.routes.draw do
  resources :empleados, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :tiendas, only: [:index, :new, :create, :edit, :update, :destroy]
  
end
