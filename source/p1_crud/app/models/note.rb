class Note < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  validates :title, uniqueness: true
end
