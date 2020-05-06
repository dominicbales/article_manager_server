class Account < ApplicationRecord
  belongs_to :users, optional: true
  has_many :articles


end
