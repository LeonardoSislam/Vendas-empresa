class Venda < ApplicationRecord

  validates :comprador, presence: true,
                    length: { minimum: 1 }

  validates :nomeproduto, presence: true,
                    length: { minimum: 1 }

  validates :quantidade, presence: true,
                    length: { minimum: 1 }

  validates :endereço, presence: true,
                    length: { minimum: 1 }
end
