class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :comment
      t.integer :link_id
      t.string :name

      t.timestamps
    end
  end
end
