class ChangeTypeColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :businesses, :type
    add_column :businesses, :type_of, :string
  end
end
