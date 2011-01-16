class AlchemyController < ApplicationController
  def index
    @inc = 0
    @ingredient = Ingredient.find(:all)
  end
end
