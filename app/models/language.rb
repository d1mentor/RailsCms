class Language < ApplicationRecord
  validates :code, uniqueness: true

  has_many :cutaway_page_versions
  has_many :footers
  has_many :navs
end
