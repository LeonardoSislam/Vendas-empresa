class Addrelacionamentotabelacompras < ActiveRecord::Migration[5.2]
  def change

    rename_column :compras, :produto, :produto_id

    change_column :compras, :produto_id, :integer

  end
end
