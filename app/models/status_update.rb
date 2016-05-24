class StatusUpdate < ApplicationRecord
  belongs_to :user
  validates :status, presence: true
  default_scope { order(created_at: :desc) }
end
