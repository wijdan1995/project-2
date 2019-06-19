class Task < ApplicationRecord
  belongs_to :project

  def completed?
    !completed_at.blank?
  end

  validates :content, presence: true
end
