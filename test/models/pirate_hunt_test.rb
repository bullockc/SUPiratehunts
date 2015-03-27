require 'test_helper'

class PirateHuntTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #test that the entry is valid when all parameters are entered
  test "pirate hunt complete" do
  	pirateHunt = PirateHunt.create(completed: false, user: 'user', hunt: '#15221234')
  	assert pirateHunt.valid?, 'PirateHunt data not saved'
  end

  #test that the entry is invalid without a completed field
  test "pirate hunt without completion" do
  	pirateHunt = PirateHunt.create(user: 'user', hunt: '#15221232')
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end

  #test that the entry is invalid without a user
  test "pirate hunt without pirate" do
  	pirateHunt = PirateHunt.create(completed: false, hunt: '#15223342')
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end
  #test that the entry is invalid without a hunt
  test "pirate hunt without hunt" do
  	pirateHunt = PirateHunt.create(completed: false, user: 'user')
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end
end