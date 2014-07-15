class Need < ActiveRecord::Base
  #switch from belongs_to
  has_one :location
  belongs_to :user

  accepts_nested_attributes_for :location



  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
end
