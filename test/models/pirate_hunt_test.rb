require 'test_helper'

class PirateHuntTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #test that the entry is valid when all parameters are entered
  test "pirate hunt complete" do
    pirateHunt = PirateHunt.create(completed: false, user_id: "1231", hunt_id: "12312")
  	assert pirateHunt.valid?, 'PirateHunt data not saved'
  end

  #test that the entry is invalid without a completed field
  test "pirate hunt without completion" do
    pirateHunt = PirateHunt.create(user_id: "12312", hunt_id: "222121")
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end
  
  #test that the entry is invalid without a hunt
  test "pirate hunt without hunt" do
  	pirateHunt = PirateHunt.create(completed: false, user_id: "38393")
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end

  #test that the entry is invalid without a user
  test "pirate hunt without user" do
    pirateHunt = PirateHunt.create(completed: false, hunt_id: "12032013")
    assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end

end


#using User.id or Hunt.id does not work. Neither does using 'user' for user
#or using '12125125', 12512124, '#15125125', or #12512512 for either. 