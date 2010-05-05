class CreateBlogcatagories < ActiveRecord::Migration
  def self.up
    create_table :blogcatagories do |t|
    t.string :name
    

    end
    Blogcatagory.create :name => "Desigin"
    Blogcatagory.create :name => "Misc"
    Blogcatagory.create :name => "News&Annoucements"
    Blogcatagory.create :name => "Video"
      
    
  end

  def self.down
    drop_table :blogcatagories
  end
end
