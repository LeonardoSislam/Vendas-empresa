require 'test_helper'

class VendaTest < ActiveSupport::TestCase


  test '*** valid sale ***' do
    vendas = Venda.new(comprador: 'Marcos', nomeproduto: 'teclado', valoritemunitario: '50.00', quantidade: '3', valoritens: '', endereco: 'julio de castilhos', descricaoproduto: 'teclado sem fio, marca DELL')
    assert vendas.valid?
  end

  test '*** valid ***' do
    vendas = Venda.new(comprador: 'Marcos', nomeproduto: 't', valoritemunitario: '50.00', quantidade: '3', valoritens: '', endereco: 'julio de castilhos', descricaoproduto: 'teclado sem fio, marca DELL')
    assert_equal false , vendas.valid?
    assert_equal ["é muito curto (mínimo: 3 caracteres)"], vendas.errors.messages[:nomeproduto]
  end

  test '*** Busca ***' do
      @venda = vendas(:one)
      assert_equal [@venda], Venda.search("d")
  end

  test '*** Search invalid ***' do
      assert_equal [], Venda.search("z")
  end
end

    # scope = :search, ->(comprador) { where("comprador like ?", "%#{comprador}%") }
    # @venda = Venda.search(params[:search]).page(params[:page]).per(7)
