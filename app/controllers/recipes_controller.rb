class RecipesController < ApplicationController
  def index
  	@input = params[:search] || "chocolate"
  	@recipes = Recipe.for(@input)
  end
end
