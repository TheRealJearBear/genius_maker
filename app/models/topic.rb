class Topic < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :meta_topic, presence: true
  validates :sub_topic, presence: true

end


# has_many :sub_topics
