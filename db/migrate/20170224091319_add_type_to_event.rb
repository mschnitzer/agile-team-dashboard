class AddTypeToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :type, :string
    add_column :events, :description, :text
  end
end
