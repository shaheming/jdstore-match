class Seat < ApplicationRecord
  mount_uploader :seatimg, ImageUploader
  belongs_to :user
  belongs_to :product
  def selected?
    is_selected
  end

end
