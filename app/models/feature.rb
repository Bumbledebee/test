class Feature < ApplicationRecord
  has_many :tests
  has_many :realtests
end
