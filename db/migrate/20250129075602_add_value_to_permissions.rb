class AddValueToPermissions < ActiveRecord::Migration[8.0]
  def change
    add_column :permissions, :value, :boolean
  end
end
