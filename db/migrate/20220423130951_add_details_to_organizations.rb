class AddDetailsToOrganizations < ActiveRecord::Migration[7.0]
  def change
    add_column :organizations, :street, :string
    add_column :organizations, :city, :string
    add_column :organizations, :state, :string
    add_column :organizations, :zip_code, :string
  end
end
