class Venda < ApplicationRecord

  validates :comprador, presence: true,
                    length: { minimum: 1 }

  validates :nomeproduto, presence: true,
                    length: { minimum: 1 }

  validates :quantidade, presence: true,
                    length: { minimum: 1 }

  validates :endereco, presence: true,
                    length: { minimum: 1 }

    scope :search, ->(comprador) { where("comprador like ?", "%#{comprador}%") }

end
