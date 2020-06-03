class User < ApplicationRecord
  has_many :accounts, dependent: :destroy
  has_many :articles, through: :accounts
  
  validates :username, uniqueness: true, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  
  has_secure_password
end
