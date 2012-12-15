class CreateDocumentParents < ActiveRecord::Migration
  def change
    create_table :documentparents do |t|
      t.string :name

      t.timestamps
    end
  end
end
