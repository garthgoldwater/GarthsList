class ImageUrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless url_points_to_an_image?(value) && url_valid?(value)
      record.errors[attribute] << (options[:message] || "this is not a valid image link")
    end
  end

  def url_points_to_an_image?(url)
    url.end_with?(".png", ".jpg", ".jpeg", ".gif")
  end

  def url_valid?(url)
    # this method's source is based on https://coderwall.com/p/ztig5g
    url = URI.parse(url)
    url.kind_of?(URI::HTTP) || url.kind_of?(URI::HTTPS)
  end
end
