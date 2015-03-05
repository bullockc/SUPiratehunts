class Pirate < ActiveRecord::Base #Singular because it is a class
	has_many :hunts #this is for pirate id
  has_many :pirate_hunts
  has_many :pirate_tasks
  belongs_to :user #connecting to user ID through devise
end
