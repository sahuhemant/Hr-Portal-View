class UpdateColumnNameToLeaveRequest < ActiveRecord::Migration[7.0]
  def change
    change_column_default :leave_requests, :status, 'pending'
  end
end
