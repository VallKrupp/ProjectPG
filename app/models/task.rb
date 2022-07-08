class Task < ApplicationRecord
  belongs_to :user, counter_cache: true
  has_many :answers, dependent: :restrict_with_error

  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true
  
end
