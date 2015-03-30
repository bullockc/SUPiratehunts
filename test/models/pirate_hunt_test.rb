require 'test_helper'

class PirateHuntTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #test that the entry is valid when all parameters are entered
  test "pirate hunt complete" do
<<<<<<< HEAD
<<<<<<< HEAD
  	pirateHunt = PirateHunt.create(completed: false, pirate: '#12421234', hunt: '#15221234')
=======
  	pirateHunt = PirateHunt.create(completed: false, user: 'user', hunt: '#15221234')
>>>>>>> parent of 92f93bf... changes to unit tests
=======
  	pirateHunt = PirateHunt.create(completed: false, user: 'user', hunt: '#15221234')
>>>>>>> parent of 92f93bf... changes to unit tests
  	assert pirateHunt.valid?, 'PirateHunt data not saved'
  end

  #test that the entry is invalid without a completed field
  test "pirate hunt without completion" do
<<<<<<< HEAD
<<<<<<< HEAD
  	pirateHunt = PirateHunt.create(pirate: '#12421242', hunt: '#15221232')
=======
  	pirateHunt = PirateHunt.create(user: 'user', hunt: '#15221232')
>>>>>>> parent of 92f93bf... changes to unit tests
=======
  	pirateHunt = PirateHunt.create(user: 'user', hunt: '#15221232')
>>>>>>> parent of 92f93bf... changes to unit tests
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end

  #test that the entry is invalid without a pirate
  test "pirate hunt without pirate" do
  	pirateHunt = PirateHunt.create(completed: false, hunt: '#15223342')
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end
  #test that the entry is invalid without a hunt
  test "pirate hunt without hunt" do
  	pirateHunt = PirateHunt.create(completed: false, pirate: '#12421122')
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end
end