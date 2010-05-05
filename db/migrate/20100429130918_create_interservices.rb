class CreateInterservices < ActiveRecord::Migration
  def self.up
    create_table :interservices do |t|
     t.integer :person_id
     t.integer :service_id
      
    end
  end

  def self.down
    drop_table :interservices
  end
end
