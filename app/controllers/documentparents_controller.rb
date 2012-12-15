class DocumentparentsController < ApplicationController
 
  active_scaffold :documentparent do |conf| 
    config.theme = :gray  
    list.columns.exclude :documents, :created_at, :updated_at
    columns[:name].inplace_edit = true
  end

end