class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :nomeproduto
      t.float :valor

      t.timestamps
    end
  end
end
