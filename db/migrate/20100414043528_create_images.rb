class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.references :work
      t.timestamps
    end
    add_index :images, :work_id
  end

  def self.down
    drop_table :images
  end
end
