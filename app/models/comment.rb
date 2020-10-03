class Comment < ApplicationRecord
	after_save :calc_average_rate
	belongs_to :member
	belongs_to :spot

	def calc_average_rate
		self.spot.ave_rate = spot.comments.average(:rate)
		self.spot.save
	end
end
