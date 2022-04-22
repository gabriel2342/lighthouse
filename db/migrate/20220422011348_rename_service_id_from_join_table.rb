class RenameServiceIdFromJoinTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :provided_services, :services_id, :service_id
  end
end
