class ShoppingListsController < ApplicationController
  def shopping_list
    @recipe = Recipe.find(params[:id])
    @inventory = current_user.inventory
    @shopping_list = []

    @recipe.foods.each do |food|
      inventory_item = @inventory.inventory_items.find_by(food:)

      next unless inventory_item.nil? || inventory_item.quantity < food.quantity_needed

      @shopping_list << {
        food:,
        quantity_needed: food.quantity_needed
      }
    end

    @total_items = @shopping_list.sum { |item| item[:quantity_needed] }
    @total_price = @shopping_list.sum { |item| item[:food].price * item[:quantity_needed] }
  end
end
