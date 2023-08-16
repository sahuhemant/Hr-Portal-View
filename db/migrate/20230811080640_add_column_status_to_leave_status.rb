# frozen_string_literal: true

class AddColumnStatusToLeaveStatus < ActiveRecord::Migration[7.0]
  def change
    add_column :leave_requests, :status, :string
  end
end
