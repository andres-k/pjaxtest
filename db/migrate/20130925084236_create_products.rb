class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :basket_id
      t.string :desc

      t.timestamps
    end
  end
end
