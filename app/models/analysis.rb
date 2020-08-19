class Analysis < ApplicationRecord
  belongs_to :child

  def is_an_emergency?
     self.child.cardiac || self.child.respiratory || self.child.prematurity || !self.child.three_monthes_old?
   
  end
end
