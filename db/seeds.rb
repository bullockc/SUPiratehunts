# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create( :email => "null",
					:encrypted_password => "null",
					:reset_password_token => "null",
					:reset_password_sent_at => nil,
					:remember_created_at => nil,
					:sign_in_count => nil,
					:current_sign_in_at => nil,
					:last_sign_in_at => nil,
					:current_sign_in_ip => "null",
					:last_sign_in_ip => "null")

pirates = Pirate.create(:display_name => "Harry Potter")


Pirate.create({
				user_id: user.id
	}, without_protection: true)

hunts = Hunt.create(

				:title => "Chamber of Secrets",
				:active => "True",
				:published => "True",
				:public => "True",
				:start_date => 03252015,
				:end_date => 03262015,
				:start_location => "library",
				:description => "Theres a snake in there"
				#:pirate => pirate.id
				)

Hunt.create({
				pirate_id: pirate.id
	}, without_protection: true)

tasks = Task.create(
				:task_type => 3,
				:points => 100,
				:prompt => "Do this",
				:clue => "by the girls bathroom",
				:correct_answer => "Moaning Mrytle"
				#:hunt => hunt.id
				)

Task.create({
				pirate_id: pirate.id
	}, without_protection: true)


