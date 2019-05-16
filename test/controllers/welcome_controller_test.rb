require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest

  test " ********   successful login of unconfirmed user    *********" do
    sign_in User.last
    get welcome_index_url
    assert_response :success
  end

  test " ********   successful logout of unconfirmed user    *********" do
    sign_out User.last
    get welcome_index_url
    assert_response :redirect
  end


  test "deveria ter autenticação" do
    get welcome_index_url
    assert_response :redirect
  end


end
