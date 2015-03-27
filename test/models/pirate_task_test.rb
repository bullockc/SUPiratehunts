require 'test_helper'

class PirateTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #test that the entry is valid when all parameters are entered
  test "pirate task complete" do
  	pirateTask = PirateTask.create(answer_uploaded: true, completed: true, task: '1423', hunt: '9876')
  	assert pirateTask.valid?, 'PirateTask data not saved'
  end

  #test that the entry is invalid without an answer uploaded
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
  end
=end

  #test that the entry is invalid without a task
  test "pirate task without task" do
  	pirateTask = PirateTask.create(answer_uploaded: true, completed: true, hunt: '9876')
  	assert_not pirateTask.valid?, 'PirateTask data not saved'
  end

  #test that the entry is invalid without a hunt
  test "pirate task without hunt" do
  	pirateTask = PirateTask.create(answer_uploaded: true, completed: true, task: '1423')
  	assert_not pirateTask.valid?, 'PirateTask data not saved'
  end
end

#may want to test that the answer_completed and completed booleans do not conflict
#ie: True/False or False/True do not exist