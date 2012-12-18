class Document < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :documentparent
  has_many   :documentparts, :order => "position"
  
  validates :state, :presence => :true
  validates :documentparent_id, :uniqueness => {:scope => :state}
  
  def to_label
    "#{document_legal_name}"
  end
  
    
end
