class Documentpart < ActiveRecord::Base
   attr_accessible :position, :part_para_header, :part_content
   belongs_to :document 
   acts_as_list :scope => :document 
   validates :position, :numericality => {
             :greater_than_or_equal => 1
   }
   
  def to_label
    "#{part_paragraph_header}"
  end
  
end
