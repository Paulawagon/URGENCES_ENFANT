class Child < ApplicationRecord
  belongs_to :user, optional: true
  has_many :analyses, dependent: :destroy
  validates :birth_date, presence: true

  def three_monthes_old?
    (Date.today - birth_date).to_i >= 90
  end
end
