class Disease < ApplicationRecord
  validates :name, :symptoms, :behavior, :when_consult, :need_know, :prevention, presence: true
end
