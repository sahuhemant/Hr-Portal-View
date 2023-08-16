# frozen_string_literal: true

class AddColumnToLeaveRequest < ActiveRecord::Migration[7.0]
  def change
    add_column :leave_requests, :start_date, :date
    add_column :leave_requests, :end_date, :date
    add_column :leave_requests, :reason, :string
  end
end
