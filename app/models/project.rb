class Project < ApplicationRecord
  belongs_to :user
  has_many :tasks , dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :deadline, presence: true
end
