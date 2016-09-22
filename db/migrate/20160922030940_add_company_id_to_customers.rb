class AddCompanyIdToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_reference :customers, :company, index: true, foreign_key: true
  end
end
