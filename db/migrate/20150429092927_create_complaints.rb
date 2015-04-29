class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
    	t.string :description, limit: 140, null: false
    	t.boolean :spam, default: false
    	t.integer :authorID, default: 0
		t.timestamps
    end
  end
end
