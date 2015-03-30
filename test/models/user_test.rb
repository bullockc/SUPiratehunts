require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  

  #may need to add all of the other fields from the schema here? not sure yet.
  test "user has display name, email and encrypted password" do
	user = User.create(display_name: 'user', email: 'user1@gmail.com', encrypted_password: 'password1')
	assert user.valid?, "User information not saved"
  end
 
 test "only display name entered" do
	user = User.create(display_name: 'user')
	assert_not user.valid?, "User email and password not entered"
  end
 
 test "only an email entered" do
	user = User.create(encrypted_password: '4p78D')
	assert_not user.valid?, "User display name and password not entered"
  end
 
  test "only encrypted password entered" do
  	user = User.create(email: 'user1@gmail.com')
	assert_not user.valid?, "User display name and email not entered"
  end
  
end


#may need later
#, created_at: '2015-03-24 17:12:02', updated_at: '2015-03-24 17:12:02', id: '987654321'