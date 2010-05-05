class CreateTypes < ActiveRecord::Migration
  def self.up
    create_table :types do |t|
        t.string :name
      t.timestamps
    end
    Type.create :name => "Developer"
    Type.create :name => "Designer"
    Type.create :name => "Principals"
    end

  def self.down
    drop_table :types
  end
end
