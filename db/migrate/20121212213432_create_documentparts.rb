class CreateDocumentparts < ActiveRecord::Migration
  def change
    create_table :documentparts do |t|
      t.integer :document_id
      t.integer :position
      t.string  :part_paragraph_header
      t.text    :part_content
      t.timestamps
    end
  end
end
