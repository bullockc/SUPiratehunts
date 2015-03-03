# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pirates = Pirate.create(:display_name => "Harry Potter")

hunts = Hunt.create(:title => "Chamber of Secrets",
				:author => "Harry Potter",
				:active => "True",
				:published => "True",
				:public => "True",
				:start_location => "library",
				:description => "Theres a snake in there")

tasks = Task.create(:points => "100",
				:clue => "by the girls bathroom",
				:prompt => "Do this",
				:correct_answer => "Moaning Mrytle",
				:photo => "False",
				:question => "False",
				:gps => "True")



PirateHunt.create(:)

PirateTask.create()
