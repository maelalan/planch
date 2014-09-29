class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :num_week

      t.timestamps
    end
  end
end
