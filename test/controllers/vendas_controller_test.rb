require 'test_helper'

class VendasControllerTest < ActionDispatch::IntegrationTest

  test '*******  redirect a new sale  ********' do
    sign_in User.last

    post  '/vendas/',
      params: {
        venda:{
          comprador: 'Joao Machado',
          nomeproduto: 'carteira',
          valoritemunitario: '30.00',
          descricaoproduto: 'carteira preta com listras',
          quantidade: '3',
          valoritens: '',
          endereco: 'avenida Italia San Pelegrino'
        }
      }
      assert_redirected_to venda_path(Venda.last.id)
  end

  test '******* update a new sale  ********' do
    sign_in User.last

    put venda_path(Venda.last.id),
      params: {
        venda:{
          comprador: 'Joao Machado Silva',
          nomeproduto: 'cinto',
          valoritemunitario: '25.00',
          descricaoproduto: 'cinto preta com listras',
          quantidade: '4',
          valoritens: '',
          endereco: 'avenida Italia San Pelegrino'
        }
      }
      assert_redirected_to(controller:"vendas", action:"show")
  end

  test '******* update a new sale with error  ********' do
    sign_in User.last

    put venda_path(Venda.last.id),
      params: {
        venda:{
          comprador: 'Joao Machado Silva',
          nomeproduto: '',
          valoritemunitario: '25.00',
          descricaoproduto: 'cinto preta com listras',
          quantidade: '4',
          valoritens: '',
          endereco: 'avenida Italia San Pelegrino'
        }
      }
      assert_redirected_to(controller:"vendas", action:"edit")
  end

  # test '******* write a sale  ********' do
  #   sign_in User.last
  #
  #   patch venda_path(Venda.last.id),
  #     params: {
  #       venda:{
  #         comprador: 'Marcos joao ',
  #         nomeproduto: 'mochila',
  #         valoritemunitario: '400.00',
  #         descricaoproduto: 'mochila de viagem feita de couro',
  #         quantidade: '4'
  #       }
  #     }
  #
  #     assert_redirected_to(controller:"vendas", action:"show")
  # end

  # test '******* delete a new sale  ********' do
  #   sign_in User.last
  #
  #   delete venda_path(Venda.last.id),
  #     params: {
  #       venda:{
  #         comprador: 'Joao Machado Silva',
  #         nomeproduto: 'cinto',
  #         valoritemunitario: '25.00',
  #         descricaoproduto: 'cinto preta com listras',
  #         quantidade: '4',
  #         valoritens: '',
  #         endereco: 'avenida Italia San Pelegrino'
  #       }
  #     }
  #
  #     assert_redirected_to(controller:"vendas", action:"index")
  # end

end
