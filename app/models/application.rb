class Application < ApplicationRecord
  belongs_to :publisher
  has_many :realtests

  def to_param
    fyberapplicationid
  end
end
