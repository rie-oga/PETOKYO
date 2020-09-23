class Dog < ApplicationRecord

	attachment :image
	belongs_to :member

end
