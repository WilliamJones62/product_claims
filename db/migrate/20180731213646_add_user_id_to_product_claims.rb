class AddUserIdToProductClaims < ActiveRecord::Migration[5.1]
  def change
    add_column :product_claims, :user_id, :integer
  end
end
