require 'test_helper'

class UserTest < ActiveSupport::TestCase

  #may need to add all of the other fields from the schema here? not sure yet.
  test "user has display name, email and password" do
	user = User.create(display_name: 'user', email: 'user1@gmail.com', encrypted_password: 'password1')
	assert user.valid?, "User information not saved"
  end
  
    test "only display name entered" do
	user = User.create(display_name: 'user')
	assert user.valid?, "User information not saved"
  end
 
 test "only email entered" do
	user = User.create(email: 'user1@gmail.com')
	assert_not user.valid?, "User information not saved"
  end
 
  test "only password entered" do
  	user = User.create(encrypted_password: 'password1')
	assert_not user.valid?, "User information not saved"
  end
  
end


#may need later
#, created_at: '2015-03-24 17:12:02', updated_at: '2015-03-24 17:12:02', id: '987654321'