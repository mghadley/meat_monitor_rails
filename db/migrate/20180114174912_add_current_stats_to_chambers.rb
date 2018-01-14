class AddCurrentStatsToChambers < ActiveRecord::Migration[5.0]
  def change
    add_column :chambers, :current_humidity, :integer
    add_column :chambers, :current_temp, :integer
  end
end
