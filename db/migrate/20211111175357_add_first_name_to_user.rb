class AddFirstNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :gender, :string
    add_column :users, :pno, :integer
    add_column :users, :joiningDate, :date
  end
end
