class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.boolean :long_term_housing
      t.boolean :immediate_housing
      t.boolean :food
      t.boolean :families
      t.boolean :expenses
      t.boolean :mental_health
      t.boolean :substance_use
      t.boolean :immigration
      t.boolean :prisoner
      t.boolean :domestic_violence
      t.boolean :us_military
      t.string :other
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
