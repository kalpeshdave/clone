class CreateWorks < ActiveRecord::Migration
  def self.up
    create_table :works do |t|
      t.string :project_name
      t.integer :market_id
      t.integer :experience_id
      t.timestamps
    end
  end

  def self.down
    drop_table :works
  end
end
