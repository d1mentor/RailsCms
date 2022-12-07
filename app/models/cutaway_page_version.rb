class CutawayPageVersion < ApplicationRecord
  validates :language_id, presence: true

  serialize :images
  belongs_to :cutaway_page
  belongs_to :language
end
