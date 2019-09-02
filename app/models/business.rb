class Business < ApplicationRecord
  scope :search, -> (name_search) { where("name like ?", "%#{name_search}%")}
  scope :search_location, -> (loc_search) { where("location like ?", "%#{loc_search}%")}
end
