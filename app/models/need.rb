class Need < ActiveRecord::Base
  belongs_to :location

  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
end
