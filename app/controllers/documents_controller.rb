class DocumentsController < ApplicationController

    

    active_scaffold :document do |config|
    #  config.theme = :gray 
       
      config.list.page_links_inner_window = true
      config.list.sorting = { :state => :asc }
      
      columns[:state].label = "State"

      columns[:state].form_ui = :select 
      columns[:state].options[:options] = US_STATES 
       
      columns[:document_legal_name].label = "Document Legal Name"
      columns[:document_legal_name].inplace_edit = true 
 
      columns[:document_type].label = "Type Of Document"
      columns[:document_type].inplace_edit = true
      columns[:document_type].form_ui = :select 
      columns[:document_type].options[:options] = [" ", "Hard Letter", "Soft Letter"]
      
      config.columns = [:state, :documentparent, :document_legal_name, :document_type]
      columns[:documentparent].label = "Document Name"
      columns[:documentparent].inplace_edit = true  
      columns[:documentparent].form_ui = :select 
      
      columns[:usps_barcode].label = "USPS BarCode?"
      columns[:documentparts].label = "Document Sections"
      columns[:signer].label = "Signer ?" 
      columns[:add_todays_date].label = "Add Today's Date ?"      
      
      columns[:use_default_amount].label = "Use Default Amount ?"      
      columns[:soft_letter].label = "Soft Letter ?"      
      columns[:sunray_logo].label = "Use Sunray Logo ?"      
      columns[:add_completed_date].label = "Add Completed Date ?"      
      columns[:to_from_address].label = "To and From Addresses ?"      
      columns[:delivery_date_on_notice].label = "Delivery Date On Notice ?" 
      columns[:total_amount_of_job].label = "Total Amount Of Job ?"    
      columns[:balance_remaining].label = "Balance Ramaining ?"             
      columns[:ariela_signature].label = "Ariela Signature ?"  
      
      config.nested.add_link(:documentparts).label = "Document Parts"
      
      config.create.label = "Create New Document"  
      config.create.columns = :state,           
                           :documentparent,        
                           :document_legal_name, 
                           :document_type,
                           :default_amount                                                    
      config.create.columns.add_subgroup "Options" do |options_group|
         options_group.add :signer,
                           :delivery_date_on_notice,
                           :total_amount_of_job,
                           :balance_remaining,
                           :use_default_amount,
                           :soft_letter,
                           :sunray_logo,
                           :to_from_address,
                           :usps_barcode,
                           :ariela_signature,
                           :add_completed_date,
                           :add_todays_date
       end              
                          
      config.update.label = "Update Document"  
      config.update.columns = :state, 
                           :documentparent, 
                           :document_legal_name,                          
                           :document_type,
                           :default_amount                           
      config.update.columns.add_subgroup "Options" do |options_group|
        options_group.add :signer,
                           :delivery_date_on_notice,
                           :total_amount_of_job,
                           :balance_remaining,
                           :use_default_amount,
                           :soft_letter,
                           :sunray_logo,
                           :to_from_address,
                           :usps_barcode,
                           :ariela_signature,
                           :add_completed_date,
                           :add_todays_date
      end   
                           
                             
                            
      config.show.label = "Show Document"  
      config.show.columns = :state, 
                           :documentparent,  
                           :document_legal_name,                         
                           :document_type,
                           :default_amount
      config.show.columns.add_subgroup "Options" do |options_group|
        options_group.add :signer,
                           :delivery_date_on_notice,
                           :total_amount_of_job,
                           :balance_remaining,
                           :use_default_amount,
                           :soft_letter,
                           :sunray_logo,
                           :to_from_address,
                           :usps_barcode,
                           :ariela_signature,
                           :add_completed_date,
                           :add_todays_date
      end   
                           
                            
      
      list.columns.exclude :name,
                           :price,
                           :rules,
                           :content,
                           :soft_letter,
                           :sunray_logo,
                           :to_from_address,
                           :usps_barcode,
                           :ariela_signature,
                           :add_completed_date,
                           :add_todays_date,
                           :default_amount,
                           :signer,
                           :delivery_date_on_notice,
                           :total_amount_of_job,
                           :balance_remaining,
                           :use_default_amount, 
                           :created_at, 
                           :updated_at
            end 
 

 
                
end  