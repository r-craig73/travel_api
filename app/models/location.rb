class Location < ActiveRecord::Base
  validates :country, :presence => true
  validates :city, :presence => true

  scope :search_country, -> (country) { where("country like ?", "%#{country}%")}

end
