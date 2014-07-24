class Image < ActiveRecord::Base
  validates_format_of :url, :with => URI::regexp(%w(http https)) 
end
