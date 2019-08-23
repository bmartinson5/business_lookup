class Business < ApplicationRecord
  scope :search, -> (name_search) { where("name like ?", "%#{name_search}%")}
end
