class Language < ApplicationRecord
  has_many :cutaway_page_versions
  has_many :footers
  has_many :navs
end
