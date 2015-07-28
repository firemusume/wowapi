class KlassColumn < ActiveRecord::Migration
def change
	remove_column :Characters, :class_id
	add_column :Characters, :Klass_id, :integer
end
end
