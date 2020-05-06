class Article < ApplicationRecord
  belongs_to :accounts

  validates :title, uniqueness: true, presence: true
  validates :link, presence: true, uniqueness: true
  validates :avatar, presence: true
  validates :time, presence: true
end
