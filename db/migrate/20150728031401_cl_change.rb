class ClChange < ActiveRecord::Migration
def change
	remove_column :Characters, :Klass_id
	add_column :Characters, :klass_id, :integer
end
end