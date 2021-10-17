class Answer < ApplicationRecord
  references :task, counter_cache: true

  validates :body, presence: true, length: { maximum: 50 }
  
end
