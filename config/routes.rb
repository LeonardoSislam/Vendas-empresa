Rails.application.routes.draw do
  get 'welcome/index'

  resources :vendas

  root 'welcome#index'

end
