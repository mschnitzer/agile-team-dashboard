class AddEventTypeToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :event_type, :string
    add_column :events, :end_date, :date
    add_column :events, :user_id, :integer
    rename_column :events, :date, :start_date
  end
end
