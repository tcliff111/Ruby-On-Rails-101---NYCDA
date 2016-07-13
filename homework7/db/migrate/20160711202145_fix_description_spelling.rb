class FixDescriptionSpelling < ActiveRecord::Migration
  def change
  	add_column :events, :description, :text
  	remove_column :events, :descritption, :text
  end
end
