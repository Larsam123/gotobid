class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :material_id
      t.string :material_desc

      t.timestamps

    end
  end
end
