class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :person_id
      t.integer :work_id
      t.integer :images_id

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
