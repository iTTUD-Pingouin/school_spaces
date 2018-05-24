class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :title, presence: :true
  validates :address, presence: :true
  before_save :downcase_title

  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  private

  def downcase_title
    self.title.downcase!
  end
end


