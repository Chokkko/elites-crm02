class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :family_name, null: false, length: { maximum: 20 } # null: false, length: { maximum: 20 } を追加
      t.string :given_name,  null: false, length: { maximum: 20 } # null: false, length: { maximum: 20 } を追加
      t.string :email,       null: false # null: false を追加

      t.timestamps null: false # null: false を追加
    end
    add_index :customers, :email, unique: true
  end
end
