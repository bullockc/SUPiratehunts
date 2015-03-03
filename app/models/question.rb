class Question < ActiveRecord::Base
	belongs_to :task, index :true
end
