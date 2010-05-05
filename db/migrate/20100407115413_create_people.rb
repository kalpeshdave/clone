class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :designation
      t.string :title
      t.text :description
      t.integer :type_id
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
