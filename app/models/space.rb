class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :city, presence: :true
  validates :address, presence: :true
  before_save :downcase_city

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  private

  def downcase_city
    self.city.downcase!
  end
end


