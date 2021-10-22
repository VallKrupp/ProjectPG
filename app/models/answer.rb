class Answer < ApplicationRecord
  belongs_to :task

  validates :body, presence: true
end
