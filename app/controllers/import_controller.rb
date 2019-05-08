require 'csv'

class ImportController < ApplicationController

  def importar
  end

  def parse_csv
    CSV.foreach(params[:file].path, col_sep: ',').with_index do |linha, indice|
      unless (indice == 0)
        Venda.create!(comprador: linha[0], nomeproduto: linha[1], valoritemunitario: linha[2], descricaoproduto: linha[3], quantidade: linha[4], valoritens: linha[5], endereço: linha[6], )
      end
    end
    redirect_to vendas_path, notice: "importação concluida!"
  end

end
