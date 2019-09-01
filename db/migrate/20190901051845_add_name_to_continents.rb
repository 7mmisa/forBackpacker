class AddNameToContinents < ActiveRecord::Migration[5.2]
  def change
    add_column :continents, :name, :string
  end
end
