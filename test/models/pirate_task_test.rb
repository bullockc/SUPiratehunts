require 'test_helper'

class PirateTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #test that the entry is valid when all parameters are entered
  test "pirate task complete" do
  	pirateTask = PirateTask.create(answer_uploaded: true, completed: true, user_id: "1232", task_id: "12123", hunt_id: "1231231")
  	assert pirateTask.valid?, 'PirateTask data not saved'
  end

  #test that the entry is invalid without an answer uploaded
   test "pirate task without answer" do
    pirateTask = PirateTask.create(completed: true, user_id: "1232", task_id: "12123", hunt_id: "1231231")
    assert_not pirateTask.valid?, 'Should be invalid without all paramaters'
  end

  #test that the entry is invalid without a completed
   test "pirate task without completed" do
    pirateTask = PirateTask.create(answer_uploaded: true, user_id: "1232", task_id: "12123", hunt_id: "1231231")
    assert_not pirateTask.valid?, 'Should be invalid without all paramaters'
  end

  #test that the entry is invalid with a user
  test "pirate task without user" do
    pirateTask = PirateTask.create(answer_uploaded: true, completed: true, task_id: "12123", hunt_id: "1231231")
    assert_not pirateTask.valid?, 'Should be invalid without all paramaters'
  end

  #test that the entry is invalid with a task
  test "pirate task without task" do
    pirateTask = PirateTask.create(answer_uploaded: true, completed: true, user_id: "1232", hunt_id: "1231231")
    assert_not pirateTask.valid?, 'Should be invalid without all paramaters'
  end
  #test that the entry is invalid with a hunt
  test "pirate task without hunt" do
    pirateTask = PirateTask.create(answer_uploaded: true, completed: true, user_id: "1232", task_id: "12123")
    assert_not pirateTask.valid?, 'Should be invalid without all paramaters'
  end


end





#may want to test that the answer_completed and completed booleans do not conflict
#ie: True/False or False/True do not exist