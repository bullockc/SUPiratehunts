class Pirate < ActiveRecord::Base #Singular because it is a class
	has_many :hunts #this is for pirate id
	has_many :pirate_hunts, :dependent => :destroy
	has_many :pirate_tasks, :dependent => :destroy
	belongs_to :user #connecting to user ID through devise
	#attr_accessible :display_name
	#without this the associated pirate was erased whenever you went to edit the profile
	#and now it shows existing display name, yay! -KKS
	def pirate
		super || build_pirate
	end
end
