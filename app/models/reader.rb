class Reader < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :checkouts
  has_many :books, through: :checkouts
end
