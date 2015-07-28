class AddNameAndRealmAndIlevelToCharacters < ActiveRecord::Migration
  def change
  	add_column :characters, :name, :string
  	add_column :characters, :realm, :string
  	add_column :characters, :ilevel, :integer
  end
end
