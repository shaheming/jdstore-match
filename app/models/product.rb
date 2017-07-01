class Product < ApplicationRecord
	validates :title, presence:true
	validates :price, numericality:{:greater_than_or_equal_to => 0}
	validates :quantity, numericality:{:greater_than_or_equal_to => 0}
	mount_uploader :image, ImageUploader
	has_many :seats
	has_many :reviews,dependent: :destroy # Delete the products will delete the reviews

	belongs_to :category
	has_many :groupships
	has_many :groups, :through=>:groupships

  before_validation :generate_friendly_id, :on => :create
  validates_uniqueness_of :friendly_id
  validates_format_of :friendly_id, :with => /\A[a-z0-9\-]+\z/
  
  def to_param
    self.friendly_id
  end
  protected

  def generate_friendly_id
    self.friendly_id ||=SecureRandom.uuid
  end
end
