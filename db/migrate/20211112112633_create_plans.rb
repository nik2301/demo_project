class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :tenure
      t.integer :price

      t.timestamps
    end
  end
end
