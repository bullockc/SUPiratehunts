require 'test_helper'

class PirateHuntTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #test that the entry is valid when all parameters are entered
  test "pirate hunt complete" do
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  	pirateHunt = PirateHunt.create(completed: false, user: 'user', hunt: 15221234)
=======
    pirateHunt = PirateHunt.create(completed: false, user_id: "1231", hunt_id: "12312")
>>>>>>> Team_Database
=======
    pirateHunt = PirateHunt.create(completed: false, user_id: "1231", hunt_id: "12312")
=======
  	pirateHunt = PirateHunt.create(completed: false, user: 'user', hunt: 15221234)
>>>>>>> master
>>>>>>> Team_Database
=======
    pirateHunt = PirateHunt.create(completed: false, user_id: "1231", hunt_id: "12312")
=======
  	pirateHunt = PirateHunt.create(completed: false, user: 'user', hunt: 15221234)
>>>>>>> master
>>>>>>> Team_Database
  	assert pirateHunt.valid?, 'PirateHunt data not saved'
  end

  #test that the entry is invalid without a completed field
  test "pirate hunt without completion" do
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
    pirateHunt = PirateHunt.create(user_id: "12312", hunt_id: "222121")
=======
>>>>>>> Team_Database
=======
    pirateHunt = PirateHunt.create(user_id: "12312", hunt_id: "222121")
=======
>>>>>>> Team_Database
  	pirateHunt = PirateHunt.create(user: 'user', hunt: 15221232'
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end

  #test that the entry is invalid without a user
  test "pirate hunt without pirate" do
  	pirateHunt = PirateHunt.create(completed: false, hunt: 15223342)
<<<<<<< HEAD
<<<<<<< HEAD
=======
    pirateHunt = PirateHunt.create(user_id: "12312", hunt_id: "222121")
>>>>>>> Team_Database
=======
>>>>>>> master
>>>>>>> Team_Database
=======
>>>>>>> master
>>>>>>> Team_Database
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end
  
  #test that the entry is invalid without a hunt
  test "pirate hunt without hunt" do
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  	pirateHunt = PirateHunt.create(completed: false, user: 'user')
=======
  	pirateHunt = PirateHunt.create(completed: false, user_id: "38393")
>>>>>>> Team_Database
=======
=======
>>>>>>> Team_Database
  	pirateHunt = PirateHunt.create(completed: false, user_id: "38393")
=======
  	pirateHunt = PirateHunt.create(completed: false, user: 'user')
>>>>>>> master
<<<<<<< HEAD
>>>>>>> Team_Database
=======
>>>>>>> Team_Database
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
