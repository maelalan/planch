class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :etat

      t.timestamps
    end
  end
end
