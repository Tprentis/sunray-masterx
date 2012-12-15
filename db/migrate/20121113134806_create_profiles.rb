class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string    :company_name
      t.string    :company_logo
      t.string    :phone
      t.string    :fax
      t.string    :website
      t.string    :owners_name
      t.string    :owners_email
      t.integer   :sales_person
      t.text      :job_description
      t.integer   :multiple_region
      t.integer   :multiple_branches
      t.integer   :active

      t.timestamps
    end
  end
end
