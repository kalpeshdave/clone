class AddServiceIdToWork < ActiveRecord::Migration
  def self.up
    add_column :works, :service_id, :integer
  end

  def self.down
    remove_column(:works, :service_id)
  end
end
