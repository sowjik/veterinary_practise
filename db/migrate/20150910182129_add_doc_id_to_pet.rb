class AddDocIdToPet < ActiveRecord::Migration
  def change
	add_column :pets, :doctor_id, :integer
  end
end
