class Post < ApplicationRecord
  has_many :nearest_stations, dependent: :destroy

  accepts_nested_attributes_for :nearest_stations
  accepts_nested_attributes_for :nearest_stations, reject_if: proc {|attributes| attributes['route_name'].blank? and attributes['station'].blank? and attributes['walking_minites'].blank?}, allow_destroy: true
end
