class AddColumnToLoginer < ActiveRecord::Migration[7.0]
  def change
    add_column :loginers, :username, :string
    add_column :loginers, :password, :string
  end
end
