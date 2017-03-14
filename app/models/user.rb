class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  def admin?
    is_admin
  end


  def select!(seat)
    seat.is_selected = true
    seat.user= self
    #  太开心了！！！ self这个单词找到真是太不容易了
  end

  def cancel!(seat)
    seat.is_selected = false
    seat.user=nil
    # 注意不是seat.user.destroy
  end

  has_many :orders
  has_many :seats
  has_many :reviews
end
