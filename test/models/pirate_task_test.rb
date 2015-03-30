require 'test_helper'

class PirateTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #test that the entry is valid when all parameters are entered
  test "pirate task complete" do
  	pirateTask = PirateTask.create(answer_uploaded: true, completed: true)
  	assert pirateTask.valid?, 'PirateTask data not saved'
  end

  #test that the entry is invalid without an answer uploaded
  test "pirate task without answer" do
  	pirateTask = PirateTask.create(completed: true)
  	assert_not pirateTask.valid?, 'PirateTask data not saved'
  end

  #test that the entry is invalid without a completed
  test "pirate task without completed" do
  	pirateTask = PirateTask.create(answer_uploaded: true)
  	assert_not pirateTask.valid?, 'PirateTask data not saved'
  end
end

#may want to test that the answer_completed and completed booleans do not conflict
#ie: True/False or False/True do not exist