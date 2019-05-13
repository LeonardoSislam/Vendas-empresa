class Alteracaodevariaveis < ActiveRecord::Migration[5.2]
  def change
    Venda.delete_all
    change_column :vendas, :valoritemunitario, :float
    change_column :vendas, :quantidade, :integer
    change_column :vendas, :valoritens, :float
  end
end
