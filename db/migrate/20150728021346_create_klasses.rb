class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :id
      t.string :name

      t.timestamps
    end
  end
end
