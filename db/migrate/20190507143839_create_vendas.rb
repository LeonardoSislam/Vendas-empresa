class CreateVendas < ActiveRecord::Migration[5.2]
  def change
    create_table :vendas do |t|
      t.string :comprador
      t.string :nomeproduto
      t.text :valoritemunitario
      t.text :descricaoproduto
      t.text :quantidade
      t.text :valoritens
      t.text :endereço

      t.timestamps
    end
  end
end
