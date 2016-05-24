class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :picture, presence: true

  mount_uploader :picture, ProfilePictureUploader

  def full_name
    self.first_name + " " + self.last_name
  end
end
