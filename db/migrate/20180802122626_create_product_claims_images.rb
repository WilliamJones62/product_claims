class CreateProductClaimsImages < ActiveRecord::Migration[5.1]
  def change
    create_table :product_claims_images do |t|
      t.integer :product_claims_id
      t.binary :image

      t.timestamps
    end
  end
end
