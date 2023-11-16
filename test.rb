unless session[:recipe].nil?
  @recipe = session[:recipe]
  if @food.save
    redirect_to new_recipe_food_path(food: @food, recipe: @recipe), notice: 'Food was successfully created.'
    session[:recipe] = nil
  else
    render :new, notice: 'Please try again'
  end
end

unless session[:inventory].nil?
  @inventory = session[:inventory]
  if @food.save
    redirect_to new_inventory_food_path(food: @food, inventory: @inventory), notice: 'Food was successfully created.'
    session[:inventory] = nil
  else
    render :new, notice: 'Please try again'
  end
end
