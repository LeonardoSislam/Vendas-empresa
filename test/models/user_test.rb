require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'valid user' do
    users = User.new(email: 'john@example.com', password: 'teste123')
    assert users.valid?
  end
  
end
