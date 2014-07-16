class Need < ActiveRecord::Base
  #switch from belongs_to
  belongs_to :location
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
end


