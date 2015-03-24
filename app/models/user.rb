class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :pirate, :dependent => :destroy
  #attr_accessible :display_name
  accepts_nested_attributes_for :pirate, allow_destroy: true   
end
