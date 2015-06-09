class CreateProposalprods < ActiveRecord::Migration
  def change
    create_table :proposalprods do |t|
      t.integer :proposalprod_id
      t.integer :proposal_id
      t.integer :product_id
      t.integer :size_id
      t.integer :color_id
      t.integer :quantity
      t.float :user_request_price
      t.float :proposal_rfp_price
      t.integer :material_id

      t.timestamps

    end
  end
end
