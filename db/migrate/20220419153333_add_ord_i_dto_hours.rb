class AddOrdIDtoHours < ActiveRecord::Migration[7.0]
  def change
    add_column :hours, :organization_id, :integer
  end
end
