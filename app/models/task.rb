class Task < ActiveRecord::Base
	belongs_to :hunt, index :true
	has_many :photos, :class_name=> 'Photo'
	has_many :questions, :class_name=> 'Question'
	has_many :GPSs, :class_name=> 'GPS'
end
