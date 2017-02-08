class CreateVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :vendors do |t|
      t.string :vendor_name
      t.string :username
      t.string :password
      t.string :memberID
      t.string :vendor_url
      t.text :notes
      t.timestamps
    end
  end
end
