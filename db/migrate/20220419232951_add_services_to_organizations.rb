class AddServicesToOrganizations < ActiveRecord::Migration[7.0]
  def self.up
    add_column :organizations, :services, :integer, null: false, default: 0
  end

  def self.down
    remove_column :organizations, :services
  end
end
