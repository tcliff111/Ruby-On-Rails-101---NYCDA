class EventUserAssociation < ActiveRecord::Migration
  def change
  	add_column :events, :user, :belongs_to
  end
end
