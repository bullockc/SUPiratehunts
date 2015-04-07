=begin
The associations for Hunts are listed here. Every hunt can have multiple tasks linked to it as well as
many Pirate Hunts. Each Hunt also belongs to the User who created it.
=end
class Hunt < ActiveRecord::Base #Singular because it is a class
	has_many :tasks, :dependent => :destroy#, :class_name=> 'Task'
	belongs_to :user#, :class_name=> 'Pirate' #This is for the author
	has_many :pirate_hunts, :dependent => :destroy
end
