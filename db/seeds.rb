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
				:clue => "Do this",
				:completed => "false")

photos = Photo.create(:prompt => "Picture of a fang",
				:submitted => "False")

gpss = Gps.create(:directions => "Underneathe the girls bathroom",
				:correct_coordinates => "0.0",
				:submitted_cooridnates => "0.0")
question = Question.create(:question => "Worst house?",
					:right_answer => "Syltherin"
					:submitted_answer => "Gryffindor")

PirateHunt.create()

PirateTask.create()
