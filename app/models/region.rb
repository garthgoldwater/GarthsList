class Region < ActiveRecord::Base
  validates :name, uniqueness: true
end
