class Child < ApplicationRecord
  belongs_to :user, optional: true
end
