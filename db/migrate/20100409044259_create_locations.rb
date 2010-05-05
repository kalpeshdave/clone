class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
        t.string :name
      t.timestamps
    end
    Location.create :name => "Chicago"
    Location.create :name => "Chile"
    Location.create :name => "Jacksonvilla"
  end

  def self.down
    drop_table :locations
  end
end
