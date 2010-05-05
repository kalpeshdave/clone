class CreateInterconnects < ActiveRecord::Migration
  def self.up
    create_table :interconnects do |t|
 t.integer :person_id
      t.integer :work_id
    end
  end

  def self.down
    drop_table :interconnects
  end
end
