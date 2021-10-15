class Answer < ApplicationRecord
  belongs_to :task

  validates :body, presence: true, length: { maximum: 50 }
  
end
