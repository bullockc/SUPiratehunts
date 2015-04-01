class WelcomeController < ApplicationController
  def index
  	@created_hunts = Hunt.where(user_id: current_user.id)
  	#temps = PirateHunt.where(user_id: current_user.id)
  	#@joined_hunts = Array.new
  	#temps.each do |temp|
  	#	@joined_hunts.push(temp.hunt)
  	@joined_hunts = PirateHunt.where(user_id: current_user.id)
  	#end
  end
    
end
