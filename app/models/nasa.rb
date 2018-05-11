class Nasa < ApplicationRecord
  validates :copyright, presence: true
  validates :date, presence: true
  validates :explanation, presence: true
  validates :title, presence: true
  validates :url, presence: true
end
