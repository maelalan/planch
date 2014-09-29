class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :user_id
      t.integer :category_id
      t.integer :week_id

      t.timestamps
    end
  end
end
