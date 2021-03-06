class Customer < ActiveRecord::Base
  def full_name
    full_name = family_name + given_name
    full_name
  end
  validates :family_name,
    presence: true, length: { maximum: 20 }
  validates :given_name,
    presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
    presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
belongs_to :company
  validates :company_id, presence: true
 belongs_to :post
  validates :post_id, presence: true
end
