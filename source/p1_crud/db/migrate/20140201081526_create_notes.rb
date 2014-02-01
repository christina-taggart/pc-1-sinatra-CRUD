class CreateNotes < ActiveRecord::Migration
  def change
  	create_table :notes do |col|
  		col.string :title
  		col.string :content
  		col.timestamps
  	end
  end
end
