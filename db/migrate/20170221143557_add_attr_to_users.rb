class AddAttrToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :birthday, :date
    add_column :users, :location, :string
    add_column :users, :github_login, :string
    add_column :users, :gravatar_url, :string
  end
end
