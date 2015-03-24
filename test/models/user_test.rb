require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "user has email and password" do
	user = User.create(email: 'user1@gmail.com', encrypted_password: '4p78D')
	assert user.valid?, "User information not saved"
  end
 
 test "only an email entered" do
	user = User.create(encrypted_password: '4p78D')
	assert_not user.valid?, "User email not entered"
  end
 
  test "only a password entered" do
  	user = User.create(email: 'user1@gmail.com')
	assert_not user.valid?, "User information not saved"
  end
  
end
