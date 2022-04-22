class AddServicesToOrganizations < ActiveRecord::Migration[7.0]
  def change
    add_column(:organizations, :services, :text, array: true, default: "")
  end
end
