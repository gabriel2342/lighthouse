class RemoveOrgIdFromServicesTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, :organization_id
  end
end
