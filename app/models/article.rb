class Article < ApplicationRecord
  has_one :users, through: :accounts
  validates :title, uniqueness: true, presence: true
  validates :link, presence: true, uniqueness: true
  validates :avatar, presence: true
  validates :time, presence: true
  validates :user_id, presence: true
  validates :account_id, presence: true

end
