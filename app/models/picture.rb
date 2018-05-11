class Picture < ApplicationRecord
  validates :photo, presence: true
  validates :title, presence: true
  validates :explanation, presence: true

  belongs_to :user

  mount_uploader :photo, ClassroomPictureUploader

end
