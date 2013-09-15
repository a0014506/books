class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.integer :link_id
      t.string :name
      t.string :offer

      t.timestamps
    end
  end
end
