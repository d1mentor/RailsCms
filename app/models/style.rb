class Style < ApplicationRecord
  has_many :style_connects
  has_many :cutaway_pages, through: :style_connects
end
