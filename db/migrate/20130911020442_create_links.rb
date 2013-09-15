class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :traffic

      t.timestamps
    end
  end
end
