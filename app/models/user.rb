class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :image

  def active_for_authentication?
    super && (is_deleted == false)
  end
  has_many :counselings, dependent: :destroy
  has_many :answers, dependent: :destroy

end
