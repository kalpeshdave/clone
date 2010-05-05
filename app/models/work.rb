class Work < ActiveRecord::Base
   has_many :people, :through => :interconnects
   has_many :interconnects
  belongs_to :service
  has_many :images
  validates_presence_of :project_name
 

 
def image_attributes=(image_attributes)
  image_attributes.each do |attributes|
    images.build(attributes)
  end
end
end
