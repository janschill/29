class Message < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { in: 1..120 }
end
