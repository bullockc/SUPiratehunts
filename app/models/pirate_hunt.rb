class PirateHunt < ActiveRecord::Base #Singular because it is a class
  #I think 'index:true' syntax only applies if you declare the association in the migration file
  belongs_to :pirate #, index:true #this makes it a field in the table
  belongs_to :hunt #, index:true #http://stackoverflow.com/questions/3401504/can-model-belong-to-two-other-models-and-have-a-nested-relationship
end
