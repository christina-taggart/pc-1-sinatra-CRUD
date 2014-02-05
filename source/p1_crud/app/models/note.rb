class Note < ActiveRecord::Base
  # Remember to create a migration!
  def self.get_all_newest_first
  	Note.all.sort_by(&:created_at).reverse
  end
end
