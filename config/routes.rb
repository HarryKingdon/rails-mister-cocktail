Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do |variable|
    resources :doses, only: [:new, :create, :destroy]
  end
end
