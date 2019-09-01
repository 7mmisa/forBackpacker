class CreateContinents < ActiveRecord::Migration[5.2]
  def change
    create_table :continents do |t|
      t.integer :country_id

      t.timestamps
    end
  end
end
