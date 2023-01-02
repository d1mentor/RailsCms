class CutawayPage < ApplicationRecord
  has_one :parent, class_name: 'CutawayPage'
  has_many :children, class_name: 'CutawayPage', foreign_key: 'parent_id'
  has_many :versions, class_name: 'CutawayPageVersion', dependent: :destroy
  before_destroy :parent_to_nil_children

  def parent_to_nil_children
    self.children.each do |child|
      child.update!(parent_id: nil)
    end
  end  
end
