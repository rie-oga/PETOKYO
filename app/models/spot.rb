class Spot < ApplicationRecord

	attachment :image
	has_many :comments, dependent: :destroy
	belongs_to :member
	belongs_to :genre
end
