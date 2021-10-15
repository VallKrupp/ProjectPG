class Task < ApplicationRecord
  belongs_to :user, counter_cache: true
  has_many :answers

  validates :title, presence: true
  validates :body, presence: true
  
end
