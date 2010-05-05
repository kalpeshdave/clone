class Service < ActiveRecord::Base
 has_many :works
 has_many :people,:through => :interservices
 has_many :interservices
  # Paperclip
has_attached_file :services_photo,
  :styles => {:thumb=> "100x100>" }
validates_presence_of :name, :description 
end
