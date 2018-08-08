class User < ApplicationRecord
  self.table_name = "product_claims_users"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable
  has_many :product_claims
end
