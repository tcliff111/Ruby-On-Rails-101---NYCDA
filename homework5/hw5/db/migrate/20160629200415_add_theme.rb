class AddTheme < ActiveRecord::Migration
  def change
  	add_column :posts, :theme, :string
  end
end
