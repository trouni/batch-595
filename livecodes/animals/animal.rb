class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.phyla
    ['worms', 'the kind of molluscs', 'the other wormy stuff', 'the symmetrical ones with the backend']
  end

  def eat(food)
    "#{name} eats #{food}."
  end
end