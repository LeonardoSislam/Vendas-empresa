json.extract! produto, :id, :nomeproduto, :valor, :created_at, :updated_at
json.url produto_url(produto, format: :json)
