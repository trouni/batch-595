class View
  def display(recipes)
    if recipes.any?
      puts "Here are all of your recipes:"
      puts
      recipes.each_with_index do |recipe, index|
        puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
      end
    else
      puts "You don't have any recipes yet... 🍽"
    end
  end

  def ask_for(thing)
    puts "What is the #{thing} of your recipe?"
    gets.chomp
  end

  def ask_for_index
    puts "Which recipe would you like to delete?"
    gets.chomp.to_i - 1
  end
end