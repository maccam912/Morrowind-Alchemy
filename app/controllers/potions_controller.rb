class PotionsController < ApplicationController
  def index
    
    #get an array of all the ingredients checked
    @ingredients = Ingredient.find(:all)
    @effects = Effect.find(:all)
    @have = Array.new
    @ingredients.each do |i|
      if params["#{i.id}"].to_i == 1
        @have << i
      end
    end
  
  @effects.each do |effect|
    @howmany = 0
    @commoneffect = Array.new
    @have.each do |have|
      if have.effect1 == effect.effect || have.effect2 == effect.effect || have.effect3 == effect.effect || have.effect4 == effect.effect
        @commoneffect << have.ingredient
      end
    end
  end
  
  end
end
