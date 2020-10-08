class Spot < ApplicationRecord

	has_many :spot_images, dependent: :destroy
	accepts_attachments_for :spot_images, attachment: :image
	has_many :comments, dependent: :destroy
	belongs_to :member
	belongs_to :genre

	validates :name, presence: true, uniqueness: true
	validates :address, presence: true
end
