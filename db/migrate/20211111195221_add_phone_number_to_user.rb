class AddPhoneNumberToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pno, :integer, limit: 8
  end
end
