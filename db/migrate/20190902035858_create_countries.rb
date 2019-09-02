class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :continent_id

      t.timestamps
    end
  end
end
