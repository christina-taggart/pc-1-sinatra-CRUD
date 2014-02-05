class Note < ActiveRecord::Base
 validates :title, uniqueness: true
end
