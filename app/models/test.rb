class Test < ApplicationRecord
  belongs_to :feature
  has_many :testvalues
end
