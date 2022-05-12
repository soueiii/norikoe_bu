class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :image

  def active_for_authentication?
    super && (is_deleted == false)
  end

  has_many :contacts, dependent: :destroy
  has_many :counselings, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :goods, dependent: :destroy
  def good_by?(answer_id)
    goods.where(answer_id: answer_id).exists?
  end
  has_many :not_goods, dependent: :destroy
  def not_good_by?(answer_id)
    not_goods.where(answer_id: answer_id).exists?
  end
end
