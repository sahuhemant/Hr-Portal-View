# frozen_string_literal: true

class LeaveRequest < ApplicationRecord
  belongs_to :user
  validates :reason, :start_date, :end_date, presence: true
  validate :validate_dates

  private

  def validate_dates
    return unless start_date.present? && end_date.present? && start_date.to_date > end_date.to_date

    errors.add(:base, 'Start date cannot be greater than end date')
  end
end
