# frozen_string_literal: true

class AddColumnJoiningDateToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :joining_date, :date
    add_column :users, :salary, :float
  end
end
