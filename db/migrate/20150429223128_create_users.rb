class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :email, null: false, limit: 70
    	t.string :password, null: false, limit: 20
    	t.string :city
    	t.integer :number_of_complaints, default: 0
    	t.string :type, null: false, default: "customer"
      t.timestamps
    end
  end
end
