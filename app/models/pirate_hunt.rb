class PirateHunt < ActiveRecord::Base
  belongs_to :pirate, index:true #this makes it a field in the table
  belongs_to :hunt, index:true #http://stackoverflow.com/questions/3401504/can-model-belong-to-two-other-models-and-have-a-nested-relationship
end
