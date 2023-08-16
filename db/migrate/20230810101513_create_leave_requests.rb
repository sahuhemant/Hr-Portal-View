# frozen_string_literal: true

class CreateLeaveRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_requests, &:timestamps
  end
end
