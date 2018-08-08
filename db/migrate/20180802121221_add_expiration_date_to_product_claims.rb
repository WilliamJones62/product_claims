class AddExpirationDateToProductClaims < ActiveRecord::Migration[5.1]
  def change
    add_column :product_claims, :expiration_date, :date
  end
end
