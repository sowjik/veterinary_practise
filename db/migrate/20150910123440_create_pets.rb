class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.string :breed
      t.integer :age
      t.float :weight
      t.string :last_visit

      t.timestamps
    end
  end
end
