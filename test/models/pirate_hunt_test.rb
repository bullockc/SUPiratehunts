require 'test_helper'

class PirateHuntTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #test that the entry is valid when all parameters are entered
  test "pirate hunt complete" do
  	pirateHunt = PirateHunt.create(completed: 'False', pirate: '1242', hunt: '1522')
  	assert pirateHunt.valid?, 'PirateHunt data not saved'
  end

  #test that the entry is invalid without a completed field
  test "pirate hunt without completion" do
  	pirateHunt = PirateHunt.create(pirate: '1242', hunt: '1522')
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end

  #test that the entry is invalid without a pirate
  test "pirate hunt without pirate" do
  	pirateHunt = PirateHunt.create(completed: 'False', hunt: '1522')
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end
  #test that the entry is invalid without a hunt
  test "pirate hunt without hunt" do
  	pirateHunt = PirateHunt.create(completed: 'False', pirate: '1242')
  	assert_not pirateHunt.valid?, 'Should be invalid without all parameters'
  end
end