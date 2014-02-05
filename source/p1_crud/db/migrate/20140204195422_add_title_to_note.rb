class AddTitleToNote < ActiveRecord::Migration
  def change
  	add_column :notes, :title, :string, limit: 50
  end
end
