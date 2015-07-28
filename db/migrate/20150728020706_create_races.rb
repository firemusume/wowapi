class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :id
      t.string :side
      t.string :name

      t.timestamps
    end
  end
end
