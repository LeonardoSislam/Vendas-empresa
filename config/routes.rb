Rails.application.routes.draw do
  resources :produtos
  resources :compras
  devise_for :users
  get 'welcome/index'

  resources :vendas

  root 'welcome#index'

  get 'importar', to: 'import#importar', as: 'importar'

  post 'parse_csv', to: 'import#parse_csv', as: 'parse_csv'

  get '/vendas', to: 'vendas#getbusca'


end
