Rails.application.routes.draw do
  get 'welcome/index'

  resources :vendas do
    collection { post :parse_csv}
  end

  root 'welcome#index'

  get 'importar', to: 'import#importar', as: 'importar'

  post 'parse_csv', to: 'import#parse_csv', as: 'parse_csv'

end
