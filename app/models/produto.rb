class Produto < ApplicationRecord

  has_many :vendas

  has_many :compras

end
