class CutawayPage < ApplicationRecord
  has_one :parent, class_name: 'CutawayPage'
  has_many :children, class_name: 'CutawayPage', foreign_key: 'parent_id'
  has_many :versions, class_name: 'CutawayPageVersion'
end
