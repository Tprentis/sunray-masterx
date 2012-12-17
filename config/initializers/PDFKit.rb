PDFKit.configure do |config|
  
    #if your site is hosted on heroku or any other hosting server which is 64bit
    config.wkhtmltopdf = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s
  
  config.default_options = {
    :encoding=>"UTF-8",
    :page_size=>"Letter",
    :margin_top=>"0.25in",
    :margin_right=>"0.1in",
    :margin_bottom=>"0.25in",
    :margin_left=>"0.1in",
    :disable_smart_shrinking=> false
  }
end
