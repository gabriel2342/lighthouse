class AddEnumsToHours < ActiveRecord::Migration[7.0]
  def change
    remove_column :hours, :day
    add_column :hours, :day, :integer
  end
end
