class Library < ApplicationRecord
  mount_uploaders :library_items, LibraryItemUploader
end
