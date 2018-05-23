class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations

  validates :city, presence: :true

  before_save :downcase_city

  private

  def downcase_city
    self.city.downcase!
  end
end
