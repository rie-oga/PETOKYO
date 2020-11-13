class Comment < ApplicationRecord
  after_save :calc_average_rate
  after_destroy :calc_average_rate
  has_many :comment_images, dependent: :destroy
  accepts_attachments_for :comment_images, attachment: :image
  belongs_to :member
  belongs_to :spot

  def calc_average_rate
    spot.ave_rate = spot.comments.average(:rate)
    spot.save
  end

  validates :rate, presence: true
  validates :comment, length: { maximum: 200 }
end
