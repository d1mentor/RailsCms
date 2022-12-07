class CutawayPage < ApplicationRecord
  has_one :parent, class_name: 'CutawayPage'
  has_many :children, class_name: 'CutawayPage', foreign_key: 'parent_id'
  has_many :versions, class_name: 'CutawayPageVersion'
  
  has_many :style_connects
  has_many :styles, through: :style_connects

  has_many :script_connects
  has_many :scripts, through: :script_connects
end
