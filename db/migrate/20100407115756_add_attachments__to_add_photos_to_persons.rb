class AddAttachments_toAddPhotosToPersons < ActiveRecord::Migration
  def self.up
    add_column :people, :person_photo_file_name, :string
    add_column :people, :person_photo_content_type, :string
    add_column :people, :person_photo_file_size, :integer
  end

  def self.down
    remove_column :people, :person_photo_file_name
    remove_column :people, :person_photo_content_type
    remove_column :people, :person_photo_file_size
  end
end
