class ZebraController < ApplicationController

  def homepage
    render template: "game_templates/homepage"
  end 
  
  def other_pages

    @dice_count = params.fetch(:param_one).to_i
    @side_count = params.fetch(:param_two).to_i

    # Roll the dice and store results in an array
     @rolls = Array.new(@dice_count) { rand(1..@side_count) }

    # Render the view (Assumes you have an `other_pages.html.erb` template)
    render template: "game_templates/other_pages"
  end
end
