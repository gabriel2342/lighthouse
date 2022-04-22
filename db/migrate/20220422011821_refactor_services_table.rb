class RefactorServicesTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, "long_term_housing"
    remove_column :services, "immediate_housing"
    remove_column :services, "food"
    remove_column :services, "families"
    remove_column :services, "expenses"
    remove_column :services, "mental_health"
    remove_column :services, "substance_use"
    remove_column :services, "immigration"
    remove_column :services, "prisoner"
    remove_column :services, "domestic_violence"
    remove_column :services, "us_military"
    remove_column :services, "other"
    add_column :services, :name, :string
  end
end
