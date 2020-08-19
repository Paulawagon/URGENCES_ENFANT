class Analysis < ApplicationRecord
  belongs_to :child

  def is_an_emergency?
    child.cardiac || child.respiratory || child.prematurity || !child.three_monthes_old?
  end
end
