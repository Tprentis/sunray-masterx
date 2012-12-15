class DocumentpartsController < ApplicationController
  
  active_scaffold :documentpart do |config|
      config.theme = :gray  
      config.label = "Document Parts"
       
      columns[:part_content].label = "Part Content" 
      columns[:part_content].options = {:cols => 100, :rows => 50}

      columns[:part_paragraph_header].label = "Part Paragraph Header"
      columns[:position].label = "Part Position in Document"      
      config.columns[:position].form_ui = :number
      
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
