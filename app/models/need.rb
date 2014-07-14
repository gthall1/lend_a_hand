class Need < ActiveRecord::Base
  belongs_to :location
  belongs_to :user

  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
end
