require 'uri'
class ImageURLValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    url_points_to_an_image?(value) && url_valid?(value)
  end

  def url_points_to_an_image?(url)
    url =~ /.*\.png|\.jpg|\.jpeg|\.gif/
  end

  def url_valid?(url)
    # this method's source is based on https://coderwall.com/p/ztig5g
    url = URI.parse(url)
    url.kind_of?(URI::HTTP) || url.kind_of?(URI::HTTPS) # this violates tell don't ask
  end
end

