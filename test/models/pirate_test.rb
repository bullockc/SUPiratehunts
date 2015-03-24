require 'test_helper'

class PirateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  	#test that the entry is valid when all parameters are present
	test "pirate is complete" do
		pirate = Pirate.create(display_name: 'Blackbeard', user_id: '1234', user: '1324')
		assert pirate.valid?, 'Pirate information not saved'
	end

	#test that the entry is invalid if the display name is missing
	test "pirate without name" do
		pirate = Pirate.create(user_id: '1234', user: '4123')
		assert_not pirate.valid?, 'Should be invalid without all paramters'
	end

	#test that the entry is invalid if the user ID is missing
	test "pirate without ID" do
		pirate = Pirate.create(display_name: 'Blackbeard', user: '1324')
		assert_not pirate.valid?, 'Should be invalid without all paramters'
	end

	#test that the entry is invalid if the user is missing
	test "pirate without user" do
		pirate = Pirate.create(display_name: 'Blackbeard', user_id: '1234')
		assert_not pirate.valid?, 'Should be invalid without all paramters'
	end
end
