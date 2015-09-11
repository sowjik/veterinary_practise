class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :date_of_visit
      t.string :pet
      t.string :customer
      t.text :reason

      t.timestamps
    end
  end
end
