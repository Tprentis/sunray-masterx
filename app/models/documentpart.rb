class Documentpart < ActiveRecord::Base
   attr_accessible :position, :part_para_header, :part_content
   belongs_to :document 
   acts_as_list :scope => :document 
   
   
  def to_label
    "#{part_paragraph_header}"
  end
  
end
