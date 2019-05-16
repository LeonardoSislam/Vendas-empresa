require 'test_helper'

class VendasControllerTest < ActionDispatch::IntegrationTest

  test '*******  should create new sale   ********' do
    create new_venda_path,
      params: {
      comprador: 'Joao Machado',
      nomeproduto: 'carteira',
      valoritemunitario: '30.00',
      descricaoproduto: 'carteira preta com listras',
      quantidade: '3',
      valoritens: '',
      endereco: 'avenida Italia San Pelegrino'
      },
      headers: @vendas

      assert_response :success
  end

end
