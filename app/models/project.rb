class Project < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  validates :about, presence: true, length: { maximum: 140 }
  validates :city, presence: true, length: { maximum: 140 }
  validates :state, presence: true, length: { maximum: 140 }
  validates :url, presence: true, length: { maximum: 200 }
end
