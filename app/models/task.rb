class Task < ApplicationRecord

  belongs_to :category
  belongs_to :user

  validates :task_name, presence: true
  validates :task_description, presence: true
  validates :deadline, presence: true
  
end
