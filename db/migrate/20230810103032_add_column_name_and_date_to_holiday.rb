# frozen_string_literal: true

class AddColumnNameAndDateToHoliday < ActiveRecord::Migration[7.0]
  def change
    add_column :holidays, :name, :string
    add_column :holidays, :date, :date
  end
end
