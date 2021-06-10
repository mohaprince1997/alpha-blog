class Article < ApplicationRecord
  belongs_to :user
  validates :title,presence: true,length: {minimum: 10,maximum: 300}
  validates :description,presence: true,length: {minimum: 10,maximum: 900}
  validates :user_id,presence: true
end
