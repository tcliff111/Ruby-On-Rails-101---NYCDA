class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
    	t.belongs_to :user
    	t.string :text
    	t.timestamps null: false
    end
  end
end
