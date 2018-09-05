class AddPriceToProductClaims < ActiveRecord::Migration[5.1]
  def change
    add_column :product_claims, :price, :float
  end
end
