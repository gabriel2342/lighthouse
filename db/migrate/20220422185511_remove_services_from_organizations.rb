class RemoveServicesFromOrganizations < ActiveRecord::Migration[7.0]
  def change
    remove_column :organizations, :services

  end
end
