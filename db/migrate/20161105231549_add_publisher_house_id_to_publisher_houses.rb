class AddPublisherHouseIdToPublisherHouses < ActiveRecord::Migration[5.0]
  def change
  	add_column :publisher_houses, :publisher_house_id, :integer
  end
end
