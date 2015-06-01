class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.integer :color_id
      t.string :color_desc

      t.timestamps

    end
  end
end
