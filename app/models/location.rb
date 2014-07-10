class Location < ActiveRecord::Base
  has_many :needs

  validates :address, presence: true
end
