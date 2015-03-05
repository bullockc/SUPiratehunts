class PirateTask < ActiveRecord::Base #Singular because it is a class
  #I think 'index:true' syntax only applies if you declare the association in the migration file
  belongs_to :pirate #, index:true
  belongs_to :hunt #, index:true #overload of inferrmation
  belongs_to :task #, index:true #https://github.com/rails/rails/pull/5262#issuecomment-4329571
end
