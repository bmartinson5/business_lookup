class CreateBusinessesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :founded
      t.string :type
      t.string :description
      t.integer :number_of_branches
      t.string :location
    end
  end
end
