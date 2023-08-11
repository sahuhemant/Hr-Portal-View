class CreateLoginers < ActiveRecord::Migration[7.0]
  def change
    create_table :loginers do |t|

      t.timestamps
    end
  end
end
