class Post < ActiveRecord::Base
  belongs_to :region
  belongs_to :category
  belongs_to :user
end
