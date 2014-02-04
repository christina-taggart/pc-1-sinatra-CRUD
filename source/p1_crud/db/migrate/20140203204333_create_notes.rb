class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title, limit: 80, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
