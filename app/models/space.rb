class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  has_many :reviews, dependent: :destroy

  validates :title, presence: :true
  validates :address, presence: :true
  before_save :downcase_title

  mount_uploader :photo, PhotoUploader

  validates :photo, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :global_search,
    against: [:title, :address],
    using: {
      tsearch: { prefix: true }
    }

  private

  def downcase_title
    self.title.downcase!
  end
end


