class Script < ApplicationRecord
  has_many :script_connects
  has_many :cutaway_pages, through: :script_connects
end
