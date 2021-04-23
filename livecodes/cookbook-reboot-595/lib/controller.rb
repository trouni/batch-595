require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def create
    # Ask user for a name
    name = @view.ask_for('name')
    # Ask user for a description
    description = @view.ask_for('description')
    # Instantiate a recipe
    recipe = Recipe.new(name, description)
    # Store the recipe in the cookbook
    @cookbook.add_recipe(recipe)
  end

  def destroy
    # Display the recipes
    display_recipes
    # Ask which recipe? (get the index)
    index_of_recipe = @view.ask_for_index
    # Remove the recipe from the Cookbook
    @cookbook.remove_recipe(index_of_recipe)
  end

  private

  def display_recipes
    # Retrieve the recipes from the Cookbook
    recipes = @cookbook.all
    # Display the recipes (ask the view)
    @view.display(recipes)
  end
end