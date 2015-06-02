class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.integer :proposal_id
      t.integer :user_id
      t.integer :user_id_vendor
      t.boolean :win
      t.float :user_request_val
      t.float :proposal_rfp_val
      t.date :start_date
      t.date :end_date

      t.timestamps

    end
  end
end
