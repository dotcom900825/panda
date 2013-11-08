class CreateDistributorProfiles < ActiveRecord::Migration
  def change
    create_table :distributor_profiles do |t|
      t.string :company_name
      t.string :contact_name
      t.string :address
      t.string :website
      t.string :contact_email
      t.text   :tagline
      t.text   :description
      t.integer :distributor_id
      t.timestamps
    end
  end
end
