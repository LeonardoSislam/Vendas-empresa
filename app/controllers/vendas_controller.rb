class VendasController < ApplicationController


  skip_before_action :authenticate_user!, only: :index

  def index
    @venda = Venda.search(params[:search]).page(params[:page]).per(2)
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

  def finish
  end

  def update
    @venda = Venda.find(params[:id])

    if @venda.update(article_params)
      redirect_to @venda
    else
      render 'edit'
    end
  end

  def destroy
    @venda = Venda.find(params[:id])
    @venda.destroy

    redirect_to vendas_path
  end

  private
    def article_params
      params.require(:venda).permit(:comprador, :produto_id, :valoritemunitario, :descricaoproduto, :quantidade, :valoritens, :endereco)
    end
end
