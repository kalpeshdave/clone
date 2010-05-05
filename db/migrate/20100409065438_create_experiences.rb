class CreateExperiences < ActiveRecord::Migration
  def self.up
    create_table :experiences do |t|
        t.string :name
      t.timestamps
    end
    Experience.create :name => 'E-Commerce'
    Experience.create :name => 'Facebook Integration'
    Experience.create :name => 'MongoDB'
    Experience.create :name => 'RubyonRails'
    Experience.create :name => 'Social Networking'
    Experience.create :name => 'Twitter Integration'
    Experience.create :name => 'White Label'
  end

  def self.down
    drop_table :experiences
  end
end
