class Location < ActiveRecord::Base
  #hail mary...change to belongs_to
  has_many :needs


  validates :address, presence: true

  geocoded_by :address

  after_validation :geocode, if: :address_changed?
end
