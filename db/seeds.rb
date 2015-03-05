# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pirates = Pirate.create(:display_name => "Harry Potter")

hunts = Hunt.create(

				:title => "Chamber of Secrets",
				:active => "True",
				:published => "True",
				:public => "True",
				:start_date => 03252015,
				:end_date => 03262015,
				:start_location => "library",
				:description => "Theres a snake in there",
				:pirate => nil)

tasks = Task.create(
				:task_type => 3,
				:points => 100,
				:prompt => "Do this",
				:clue => "by the girls bathroom",
				:correct_answer => "Moaning Mrytle",
				:hunt => nil)




