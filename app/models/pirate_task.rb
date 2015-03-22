class PirateTask < ActiveRecord::Base #Singular because it is a class
  #I think 'index:true' syntax only applies if you declare the association in the migration file
  belongs_to :pirate #, index:true
  belongs_to :hunt #, index:true #overload of inferrmation
  belongs_to :task #, index:true #https://github.com/rails/rails/pull/5262#issuecomment-4329571

    #https://www.youtube.com/watch?v=Z5W-Y3aROVE
    
    #Can add file sizes here
  has_attached_file :submission, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.jpg"
    
    validates_attachment :submission,
  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
    
  # Validate content type
#  validates_attachment_content_type :submission, :content_type => /\Aimage/
#  # Validate filename
#  validates_attachment_file_name :submission, :matches => [/png\Z/, /jpe?g\Z/]
#  # Explicitly do not validate
#  do_not_validate_attachment_file_type :submission
    
end

