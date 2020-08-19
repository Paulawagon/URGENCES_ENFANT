class Child < ApplicationRecord
  belongs_to :user, optional: true
  has_many :analyses, dependent: :destroy

  def three_monthes_old?
    (Date.today - self.birth_date).to_i >= 90
  end

end
