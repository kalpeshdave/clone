class AddBlogcatagoryIdToBlog < ActiveRecord::Migration
  def self.up
    add_column :blogs, :blogcatagory_id, :integer
  end

  def self.down
    remove_column :blogs, :blogcatagory_id
  end
end
