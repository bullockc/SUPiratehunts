# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pirate.create(:display_name => "Harry Potter")

hunt.create(:title => "Chamber of Secrets",
				:author => "Harry Potter",
				:active => "True",
				:published => "True",
				:public => "True",
				:start_location => "library",
				:description => "Theres a snake in there")

task.create(:points => "100",
				:clue => "Do this",
				:completed => "false")

photo.create(:prompt => "Picture of a fang",
				:submitted => "False")

gps.create(:directions => "Underneathe the girls bathroom",
				:correct_coordinates => "0.0",
				:submitted_cooridnates => "0.0")
question.create(:question => "Worst house?",
					:right_answer => "Syltherin"
					:submitted_answer => "Gryffindor")

pirate_hunt.create()

pirate_task.create()
