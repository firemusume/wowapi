class AddColumns < ActiveRecord::Migration
  def change
  	add_column :characters, :class_id, :integer
  	add_column :characters, :race_id, :integer
  	add_column :characters, :side, :string
  	remove_column :characters, :ilevel
  end

end
