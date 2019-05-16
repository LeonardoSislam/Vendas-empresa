class Alterarnomecoluneendereco < ActiveRecord::Migration[5.2]
  def change
    rename_column :vendas, :endereço, :endereco
  end
end
