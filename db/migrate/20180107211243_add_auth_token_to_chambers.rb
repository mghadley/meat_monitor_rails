class AddAuthTokenToChambers < ActiveRecord::Migration[5.0]
  def change
    add_column :chambers, :token, :string
    add_index :chambers, :token, unique: true
  end
end
