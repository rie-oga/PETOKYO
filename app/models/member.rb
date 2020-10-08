class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   has_many :spots
   has_many :comments, dependent: :destroy
   attachment :image

   validates :name, presence: true, length: { maximum: 20 }
   validates :nick_name, presence: true, uniqueness: true, length: { maximum: 20 }
   validates :email, presence: true

  def member_status
    if is_withdeawal_status == true
        "会員"
    else
        "退会済み"
    end
  end
end
