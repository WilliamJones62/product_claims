class AddImageToProductClaims < ActiveRecord::Migration[5.1]
  def change
    add_column :product_claims, :image, :string
  end
end
