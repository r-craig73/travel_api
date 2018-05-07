class Location < ActiveRecord::Base
  validates :country, :presence => true
  validates :city, :presence => true
end
