class Image < ActiveRecord::Base
  belongs_to :works

  has_attached_file :work_data,
  :styles => {
    :thumb => "50x50#",
    :large => "640x480#"
  }

  validates_attachment_presence :work_data
  validates_attachment_content_type :work_data,
  :content_type => ['image/jpeg', 'image/pjpeg',
                                   'image/jpg', 'image/png']

  def self.destroy_pics(work, images)
  Image.find(images, :conditions => {:work_id => work}).each(&:destroy)
end
end
