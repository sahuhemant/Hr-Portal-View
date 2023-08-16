# frozen_string_literal: true

class CreateHolidays < ActiveRecord::Migration[7.0]
  def change
    create_table :holidays, &:timestamps
  end
end
