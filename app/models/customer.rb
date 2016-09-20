class Customer < ApplicationRecord
  def full_name
    full_name = family_name + given_name
    full_name
  end
end
