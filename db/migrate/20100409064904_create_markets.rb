class CreateMarkets < ActiveRecord::Migration
  def self.up
    create_table :markets do |t|
        t.string :name
      t.timestamps
    end
    Market.create :name => "Arts & Entertainment"
    Market.create :name => "Commerce"
    Market.create :name => "Medicine/Healthcare"
    Market.create :name => "Non-Profit"
    Market.create :name => "Recruiting"
    Market.create :name => "Twitter"
   end

  def self.down
    drop_table :markets
  end
end
