class DocumentpartsController < ApplicationController
  
  active_scaffold :documentpart do |config|
   #   config.theme = :gray  
      config.label = "Document Parts"
       
      columns[:part_content].label = "Part Content" 
       
      columns[:part_paragraph_header].label = "Part Paragraph Header"
   

      columns[:position].label = "Part Position in Document"   
      
      columns[:position].inplace_edit = true

      columns[:position].form_ui = :select 
      columns[:position].options[:options] = (1..99)

      columns[:top_margin].form_ui = :select
      columns[:top_margin].options[:options] = (0..99)

      columns[:bottom_margin].form_ui = :select
      columns[:bottom_margin].options[:options] = (0..99)

      columns[:left_margin].form_ui = :select
      columns[:left_margin].options[:options] = (0..99)

      columns[:right_margin].form_ui = :select
      columns[:right_margin].options[:options] = (0..99)
     
      config.create.columns = :part_paragraph_header,
                            :part_content,
                            :position, 
                            :top_margin, :bottom_margin, :left_margin, :right_margin  
                                      
      config.update.columns = :part_paragraph_header,
                            :part_content,
                            :position,
                            :top_margin, :bottom_margin, :left_margin, :right_margin           
 
      config.show.columns = :part_paragraph_header,
                            :part_content,
                            :position,
                            :top_margin, :bottom_margin, :left_margin, :right_margin 
              
    

      list.columns.exclude :created_at, 
                           :updated_at,
                           :top_margin,
                           :bottom_margin,
                           :left_margin,
                           :right_margin

  end
end
