class AddNotes < ActiveRecord::Migration
  def change
  	create_table :notes do |t|
  		t.string :content_text, limit: 150
  	end
  end
end
