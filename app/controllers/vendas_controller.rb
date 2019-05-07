class VendasController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "123", except: [:index, :show]

  def index
    @venda = Venda.all
  end

  def show
    @venda = Venda.find(params[:id])
  end

  def new
    @venda = Venda.new
  end

  def edit
    @venda = Venda.find(params[:id])
  end

  def create
    @venda = Venda.new(article_params)

    if @venda.save
     redirect_to @venda
    else
      render 'new'
    end
  end

  def destroy
    @venda = Venda.find(params[:id])
    @venda.destroy

    redirect_to vendas_path
  end

  private
  def article_params
    params.require(:vendas).permit(:comprador, :nomeproduto, :valoritemunitario, :descricaoproduto, :quantidade, :valoritens, :endereço)
  end
end
