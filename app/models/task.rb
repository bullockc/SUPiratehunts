class Task < ActiveRecord::Base #Singular because it is a class
	#I think 'index:true' syntax only applies if you declare the association in the migration file
	belongs_to :hunt #, index :true
	#no longer relevant because we decided to have one tasks model
	#with fields for each type of answer.
	#has_many :photos, :class_name=> 'Photo'
	#has_many :questions, :class_name=> 'Question'
	#has_many :GPSs, :class_name=> 'GPS'
end
