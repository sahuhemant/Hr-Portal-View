# frozen_string_literal: true

class User < ApplicationRecord
  has_many :leave_requests, dependent: :destroy
end
