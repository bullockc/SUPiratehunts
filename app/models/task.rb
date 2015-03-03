class Task < ActiveRecord::Base
	belongs_to :hunt
	has_many :photo, :class_name=> 'Photo'
	has_many :questions, :class_name=> 'Question'
	has_many :GPS, :class_name=> 'GPS'
end
