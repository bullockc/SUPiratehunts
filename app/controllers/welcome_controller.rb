class WelcomeController < ApplicationController
  def index
  	@hunts = Hunt.where(user_id: current_user.id)
  	temps = PirateHunt.where(user_id: current_user.id)
  	@pirate_hunts = Array.new
  	temps.each do |temp|
  		@pirate_hunts.push(temp.hunt)
  	end
  end
    
end
