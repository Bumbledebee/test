class Realtest < ApplicationRecord
  belongs_to :test
  has_many :realtestresults
end
