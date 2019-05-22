class Venda < ApplicationRecord

  validates :comprador, presence: true,
                    length: { minimum: 1 }

  # validates :nomeproduto, presence: true
  # validates :nomeproduto, length: { minimum: 3 },  allow_blank: true

  validates :quantidade, presence: true,
                    length: { minimum: 1 }

  validates :endereco, presence: true,
                    length: { minimum: 1 }

    scope :search, ->(comprador) { where("comprador like ?", "%#{comprador}%") }

    belongs_to :produto

end
