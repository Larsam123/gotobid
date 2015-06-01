class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.integer :size_id
      t.string :size_desc
      t.integer :count
      t.integer :order

      t.timestamps

    end
  end
end
