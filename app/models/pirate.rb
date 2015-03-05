class Pirate < ActiveRecord::Base
  has_many :pirate_hunts
  has_many :pirate_tasks, through :pirate_hunts #look at section 2.4 unsure if engine wants this
  #http://guides.rubyonrails.org/association_basics.html
end
