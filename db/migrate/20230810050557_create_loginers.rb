# frozen_string_literal: true

class CreateLoginers < ActiveRecord::Migration[7.0]
  def change
    create_table :loginers, &:timestamps
  end
end
