class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :name
    	t.text :descritption
    	t.datetime :date
    	t.string :location

    	t.timestamps null: false
    end
  end
end
