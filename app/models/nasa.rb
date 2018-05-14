class Nasa < ApplicationRecord
  validates :date, presence: true
  validates :explanation, presence: true
  validates :title, presence: true
  validates :url, presence: true
end
