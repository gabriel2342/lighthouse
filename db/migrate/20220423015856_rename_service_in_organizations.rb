class RenameServiceInOrganizations < ActiveRecord::Migration[7.0]
  def change
    rename_column :organizations, :service, :services

  end
end
