class CreateHours < ActiveRecord::Migration[7.0]
  def change
    create_table :hours do |t|
      t.string :day
      t.string :opens
      t.string :closes

      t.timestamps
    end
  end
end
