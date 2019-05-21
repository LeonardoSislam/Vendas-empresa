class Addrelacionamentoentretabelas < ActiveRecord::Migration[5.2]
  def change

    rename_column :vendas, :nomeproduto, :produto_id
    
    change_column :vendas, :produto_id, :integer

  end
end
