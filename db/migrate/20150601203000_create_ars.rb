class CreateArs < ActiveRecord::Migration
  def change
    create_table :ars do |t|
      t.integer :user_id
      t.integer :proposal_id
      t.integer :invoice_number
      t.date :invoice_date
      t.float :amt_owed
      t.float :amt_paid

      t.timestamps

    end
  end
end
