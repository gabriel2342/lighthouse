class CreateProvidedServices < ActiveRecord::Migration[7.0]
  def change
    create_table :provided_services do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :services, null: false, foreign_key: true

      t.timestamps
    end
  end
end
