class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :documentparent_id
      t.string 	:name
      t.string  :type
      t.string  :document_type
      t.string  :state
      t.decimal :price, :precision => 10, :scale => 2
      t.string  :rules
      t.text    :content
      t.boolean :soft_letter
      t.boolean :sunray_logo
      t.boolean :to_from_address
      t.boolean :usps_barcode
      t.boolean :ariela_signature
      t.boolean :add_completed_date
      t.boolean :add_todays_date 
      t.timestamps
    end
  end
end
