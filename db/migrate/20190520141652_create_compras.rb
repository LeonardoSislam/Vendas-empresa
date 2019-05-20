class CreateCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :compras do |t|
      t.string :comprador
      t.string :produto
      t.float :valor
      t.integer :quantidade

      t.timestamps
    end
  end
end
