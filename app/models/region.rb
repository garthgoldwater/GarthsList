class Region < ActiveRecord::Base
  validates :name, presence: true
end
