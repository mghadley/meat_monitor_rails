class CreateChambers < ActiveRecord::Migration[5.0]
  def change
    create_table :chambers do |t|
      t.string :name
      t.integer :target_humidity
      t.integer :target_temp

      t.timestamps
    end
  end
end
