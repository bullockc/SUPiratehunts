class Hunt < ActiveRecord::Base #Singular because it is a class
	has_many :tasks, :class_name=> 'Task'
	belongs_to :pirate, :class_name=> 'Pirate' #This is for the author
end
