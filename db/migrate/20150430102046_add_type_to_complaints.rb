class AddTypeToComplaints < ActiveRecord::Migration
  def change
    add_column :complaints, :type, :string
  end
end
