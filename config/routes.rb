Rails.application.routes.draw do
  resources :empleados, only: [:index, :new, :create, :edit, :update, :destroy]
  
end
