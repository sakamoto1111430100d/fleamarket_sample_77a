class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :family_name,        null: false
      t.string :first_name,         null: false
      t.string :family_name_kana,   null: false
      t.string :first_name_kana,    null: false
      t.string :postal_code,        null: false
      t.integer :prefecture,        null: false
      t.string :city,               null: false
      t.string :address,            null: false
      t.string :after_address
      t.string :phone
      t.references :user, type: :bigint, null: false
      t.timestamps
    end
    add_foreign_key :destinations, :users
  end
end
