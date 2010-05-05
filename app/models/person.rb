class Person < ActiveRecord::Base
  has_many :works, :through => :interconnects
  has_many :interconnects
  has_many :services,:through => :interservices
  has_many :interservices
  has_many :blogs, :dependent => :destroy
  has_one :type
  has_one :location
 

# Paperclip
has_attached_file :person_photo,
  :styles => { :thumb=> "160x160>" }

  #validations

  validates_presence_of :name, :designation ,:title,:description,
    :message => "Please Fill Required Information"
end
