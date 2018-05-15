class Meeting < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :start_time, presence: true

  belongs_to :user


end
