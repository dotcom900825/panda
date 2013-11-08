class CreateSupplierProfiles < ActiveRecord::Migration
  def change
    create_table :supplier_profiles do |t|
      t.string :company_name
      t.string :contact_name
      t.string :address
      t.string :website
      t.string :contact_email
      t.text   :tagline
      t.text   :description
      t.integer :supplier_id
      t.timestamps
    end
  end
end
