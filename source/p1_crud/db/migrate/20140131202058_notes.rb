class Notes < ActiveRecord::Migration
  def change
    create_table :notes do |col|
      col.string :title, :content
    end
  end
end
