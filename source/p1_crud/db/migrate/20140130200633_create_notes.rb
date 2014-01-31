class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |col|
      col.string :title, :content
      col.timestamps
    end
  end
end
