json.extract! compra, :id, :comprador, :produto, :valor, :quantidade, :created_at, :updated_at
json.url compra_url(compra, format: :json)
