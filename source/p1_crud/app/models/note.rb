class Note < ActiveRecord::Base
  # Remember to create a migration
  validates :title, uniqueness: true
end
