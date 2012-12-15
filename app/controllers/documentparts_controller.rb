class DocumentpartsController < ApplicationController
  
  active_scaffold :documentpart do |config|
   #   config.theme = :gray  
      config.label = "Document Parts"
       
      columns[:part_content].label = "Part Content" 
       
      columns[:part_paragraph_header].label = "Part Paragraph Header"
   
      config.columns[:position].select = :number
      columns[:position].label = "Part Position in Document"   
      columns[:position].inplace_edit = true
      
      config.create.columns = :part_paragraph_header,
                            :part_content,
                            :position      
      config.update.columns = :part_paragraph_header,
                            :part_content,
                            :position           
       config.show.columns = :part_paragraph_header,
                            :part_content,
                            :position           
    

      list.columns.exclude :created_at, 
                           :updated_at

  end
end
