class InventoryFood < ApplicationRecord
  belongs_to :inventoryId
  belongs_to :foodId
end
