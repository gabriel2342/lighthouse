class RenameServicesinOrganizationtoService < ActiveRecord::Migration[7.0]
  def change
    rename_column :organizations, :services, :service

  end
end
