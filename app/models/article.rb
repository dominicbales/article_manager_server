class Article < ApplicationRecord
  belongs_to :account
  has_one :user, through: :account
  
  validates :title, uniqueness: { scope: :user_id}, presence: true
  validates :link, presence: true, uniqueness: { scope: :user_id}
  validates :avatar, presence: true
  validates :time, presence: true
end
