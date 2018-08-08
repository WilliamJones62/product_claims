class ProductClaim < ApplicationRecord
  belongs_to :user, :foreign_key => "user_id"
  mount_uploader :image, ImageUploader
end
