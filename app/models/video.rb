class Video < ApplicationRecord
  validates :youtube_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :video_id, presence: true



  def self.search(search)
  where("youtube_id LIKE ? OR title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
