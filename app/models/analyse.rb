class Analyse < ApplicationRecord
  belongs_to :child, dependent: :destroy
end
