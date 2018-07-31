class CreateProductClaims < ActiveRecord::Migration[5.1]
  def change
    create_table :product_claims do |t|
      t.string :supermarket
      t.string :category
      t.string :brand
      t.string :description
      t.boolean :abf
      t.boolean :organic
      t.boolean :grassfed
      t.boolean :never
      t.boolean :humane
      t.boolean :promo

      t.timestamps
    end
  end
end
