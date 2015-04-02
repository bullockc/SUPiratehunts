require 'test_helper'

class PirateTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #test that the entry is valid when all parameters are entered
  test "pirate task complete" do
<<<<<<< HEAD
  	pirateTask = PirateTask.create(answer_uploaded: true, completed: true, task: '1423', hunt: '9876')
=======
  	pirateTask = PirateTask.create(answer_uploaded: true, completed: true, user_id: "1232", task_id: "12123", hunt_id: "1231231")
>>>>>>> Team_Database
  	assert pirateTask.valid?, 'PirateTask data not saved'
  end

  #test that the entry is invalid without an answer uploaded
<<<<<<< HEAD
  test "pirate task without answer" do
  	pirateTask = PirateTask.create(completed: true, task: '1423', hunt: '9876')
  	assert_not pirateTask.valid?, 'PirateTask data not saved'
  end

  #test that the entry is invalid without a completed
  test "pirate task without completed" do
  	pirateTask = PirateTask.create(answer_uploaded: true, task: '1423', hunt: '9876')
  	assert_not pirateTask.valid?, 'PirateTask data not saved'
  end

=begin
  #test that the entry is invalid without a pirate
  test "pirate task without pirate" do
  	pirateTask = PirateTask.create(answer_uploaded: 'True', completed: 'True', task: '1423', hunt: '9876')
  	assert_not pirateTask.valid?, 'PirateTask data not saved'
=======
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
>>>>>>> Team_Database
  end
=end

  #test that the entry is invalid with a task
  test "pirate task without task" do
<<<<<<< HEAD
  	pirateTask = PirateTask.create(answer_uploaded: true, completed: true, hunt: '9876')
  	assert_not pirateTask.valid?, 'PirateTask data not saved'
=======
    pirateTask = PirateTask.create(answer_uploaded: true, completed: true, user_id: "1232", hunt_id: "1231231")
    assert_not pirateTask.valid?, 'Should be invalid without all paramaters'
>>>>>>> Team_Database
  end
  #test that the entry is invalid with a hunt
  test "pirate task without hunt" do
<<<<<<< HEAD
  	pirateTask = PirateTask.create(answer_uploaded: true, completed: true, task: '1423')
  	assert_not pirateTask.valid?, 'PirateTask data not saved'
=======
    pirateTask = PirateTask.create(answer_uploaded: true, completed: true, user_id: "1232", task_id: "12123")
    assert_not pirateTask.valid?, 'Should be invalid without all paramaters'
>>>>>>> Team_Database
  end


end





#may want to test that the answer_completed and completed booleans do not conflict
#ie: True/False or False/True do not exist